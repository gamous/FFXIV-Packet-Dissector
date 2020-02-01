const fs = require('fs')
const path = require('path')
const readCsv = require('./read-csv')

const dbRoot = '../../library/5.05/'
const output = '../src/'
const langs = ['chs', 'en', 'ja', 'de', 'fr']

/* eslint no-extend-native: 0 */
Array.prototype.findById = function (id) {
  return this.find(item => item['#'] == id)
}

Array.prototype.kvmap = function (nKey = 'Name', valueFunc = (val) => val) {
  return this.map(item => ({ key: item['#'], value: valueFunc(item[nKey]) }))
}

const dbStore = {}
const db = function (name) {
  console.log(`Reading '${name}'`)
  return readCsv(fs.readFileSync(path.join(dbRoot, name + '.csv'), 'utf-8'))
}

const generateLuaTable = function (output) {
  return `-- This file is generated by tools/db2lua.js
  
return {${Object.keys(output).map(key => `
  ${key} = {${output[key].filter(({ key, value }) => key && value).map(({ key, value }) => `
    [${key}] = '${value.replace(/'/g, '\\\'').replace(/\r/g, '').replace(/\n/g, '\\n')}'`).join(',')}
  }`).join(',')}
}`
}

langs.forEach(lang => {
  const obj = {}

  obj.Action = [].concat(
    db(`Action.${lang}`).kvmap(),
    db(`CraftAction.${lang}`).kvmap()
  )
  obj.BNpcName = db(`BNpcName.${lang}`).kvmap('Singular')
  obj.ClassJob = db(`ClassJob.${lang}`).kvmap()
  obj.ContentFinderCondition = db(`ContentFinderCondition.${lang}`).kvmap()
  obj.ContentType = db(`ContentType.${lang}`).kvmap()
  obj.ContentRoulette = db(`ContentRoulette.${lang}`).kvmap()
  obj.Fate = db(`Fate.${lang}`).kvmap()
  obj.InstanceContent = db(`InstanceContent.${lang}`).kvmap()
  obj.Item = db(`Item.${lang}`).kvmap()
  obj.Status = db(`Status.${lang}`).kvmap()

  let dbPlaceName = db(`PlaceName.${lang}`)
  obj.TerritoryType = db('TerritoryType')
    .filter(({ PlaceName }) => +PlaceName)
    .kvmap('PlaceName', placeName => dbPlaceName.findById(placeName).Name)

  let dbTitle = db(`Title.${lang}`)
  obj.TitleMasculine = dbTitle.kvmap('Masculine')
  obj.TitleFeminine = dbTitle.kvmap('Feminine')
  obj.World = db('World').kvmap()

  fs.writeFileSync(`${output}ffxiv_db_${lang}.lua`, generateLuaTable(obj))
})
