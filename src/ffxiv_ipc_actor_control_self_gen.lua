-- This file is generated by tools/json2lua.js

local db = require('ffxiv_db')
local enum = require('ffxiv_enum')
local label_unknown0_type = {
  [521] = "JobLevel",
}
local label_data0_type = {
  [2372] = "Fate",
  [2353] = "Fate",
  [2358] = "Fate",
  [2351] = "Fate",
  [2366] = "Fate",
  [320] = "Item",
  [325] = "Bait",
  [515] = "Achievement",
  [521] = "ItemLevel",
  [1204] = "TripleTriadCardId",
  [1205] = "TriadId",
}
local label_data1_type = {
  [7] = "Exp",
  [125] = "NpcId",
  [155] = "Progress(%)",
}
local label_data2_type = {
  [7] = "Bouns(%)",
  [125] = "Radius",
}
local label_data3_type = {
  [125] = "X",
}
local label_data4_type = {
  [125] = "Y",
}
local label_data5_type = {
  [125] = "Z",
}
local ffxiv_ipc_actor_control_self = Proto("ffxiv_ipc_actor_control_self", "FFXIV-IPC Actor Control Self")

local actor_control_self_fields = {
  type     = ProtoField.uint16("ffxiv_ipc_actor_control_self.type", "Type", base.DEC, enum.reverse.actor_control_type),
  unknown0 = ProtoField.uint16("ffxiv_ipc_actor_control_self.unknown0", "Unknown0", base.DEC),
  data0    = ProtoField.uint32("ffxiv_ipc_actor_control_self.data0", "Data0", base.DEC),
  data1    = ProtoField.uint32("ffxiv_ipc_actor_control_self.data1", "Data1", base.DEC),
  data2    = ProtoField.uint32("ffxiv_ipc_actor_control_self.data2", "Data2", base.DEC),
  data3    = ProtoField.uint32("ffxiv_ipc_actor_control_self.data3", "Data3", base.DEC),
  data4    = ProtoField.uint32("ffxiv_ipc_actor_control_self.data4", "Data4", base.DEC),
  data5    = ProtoField.uint32("ffxiv_ipc_actor_control_self.data5", "Data5", base.DEC),
  data6    = ProtoField.uint32("ffxiv_ipc_actor_control_self.data6", "Data6", base.DEC),
}

ffxiv_ipc_actor_control_self.fields = actor_control_self_fields

function ffxiv_ipc_actor_control_self.dissector(tvbuf, pktinfo, root)
  local tree = root:add(ffxiv_ipc_actor_control_self, tvbuf)
  pktinfo.cols.info:set("Actor Control Self")

  local len = tvbuf:len()

  -- dissect the type field
  local type_tvbr = tvbuf:range(0, 2)
  local type_val  = type_tvbr:le_uint()
  tree:add_le(actor_control_self_fields.type, type_tvbr, type_val)

  local type_display = ", Type: " .. (enum.reverse.actor_control_type[type_val] or "(unknown)")
  pktinfo.cols.info:append(type_display)
  tree:append_text(type_display)

  -- dissect the unknown0 field
  local unknown0_tvbr = tvbuf:range(2, 2)
  local unknown0_val  = unknown0_tvbr:le_uint()
  local unknown0_label_key = "Unknown0"
  local unknown0_label_val = unknown0_val
  if type_val == 521 then
    unknown0_label_key = "JobLevel"
  end
  tree:add_le(actor_control_self_fields.unknown0, unknown0_tvbr, unknown0_val, unknown0_label_key .. ": " .. unknown0_label_val)

  -- dissect the data0 field
  local data0_tvbr = tvbuf:range(4, 4)
  local data0_val  = data0_tvbr:le_uint()
  local data0_label_key = "Data0"
  local data0_label_val = data0_val
  if type_val == 2372 then
    data0_label_key = "Fate"
    data0_label_val = (db.Fate[data0_val] or "Unknown") .. " (" .. data0_val .. ")"
  elseif type_val == 2353 then
    data0_label_key = "Fate"
    data0_label_val = (db.Fate[data0_val] or "Unknown") .. " (" .. data0_val .. ")"
  elseif type_val == 2358 then
    data0_label_key = "Fate"
    data0_label_val = (db.Fate[data0_val] or "Unknown") .. " (" .. data0_val .. ")"
  elseif type_val == 2351 then
    data0_label_key = "Fate"
    data0_label_val = (db.Fate[data0_val] or "Unknown") .. " (" .. data0_val .. ")"
  elseif type_val == 2366 then
    data0_label_key = "Fate"
    data0_label_val = (db.Fate[data0_val] or "Unknown") .. " (" .. data0_val .. ")"
  elseif type_val == 320 then
    data0_label_key = "Item"
    data0_label_val = (db.Item[data0_val] or "Unknown") .. " (" .. data0_val .. ")"
  elseif type_val == 325 then
    data0_label_key = "Bait"
    data0_label_val = (db.Item[data0_val] or "Unknown") .. " (" .. data0_val .. ")"
  elseif type_val == 515 then
    data0_label_key = "Achievement"
  elseif type_val == 521 then
    data0_label_key = "ItemLevel"
  elseif type_val == 1204 then
    data0_label_key = "TripleTriadCardId"
  elseif type_val == 1205 then
    data0_label_key = "TriadId"
  end
  tree:add_le(actor_control_self_fields.data0, data0_tvbr, data0_val, data0_label_key .. ": " .. data0_label_val)

  -- dissect the data1 field
  local data1_tvbr = tvbuf:range(8, 4)
  local data1_val  = data1_tvbr:le_uint()
  local data1_label_key = "Data1"
  local data1_label_val = data1_val
  if type_val == 7 then
    data1_label_key = "Exp"
  elseif type_val == 125 then
    data1_label_key = "NpcId"
  elseif type_val == 155 then
    data1_label_key = "Progress(%)"
  end
  tree:add_le(actor_control_self_fields.data1, data1_tvbr, data1_val, data1_label_key .. ": " .. data1_label_val)

  -- dissect the data2 field
  local data2_tvbr = tvbuf:range(12, 4)
  local data2_val  = data2_tvbr:le_uint()
  local data2_label_key = "Data2"
  local data2_label_val = data2_val
  if type_val == 7 then
    data2_label_key = "Bouns(%)"
  elseif type_val == 125 then
    data2_label_key = "Radius"
  end
  tree:add_le(actor_control_self_fields.data2, data2_tvbr, data2_val, data2_label_key .. ": " .. data2_label_val)

  -- dissect the data3 field
  local data3_tvbr = tvbuf:range(16, 4)
  local data3_val  = data3_tvbr:le_uint()
  local data3_label_key = "Data3"
  local data3_label_val = data3_val
  if type_val == 125 then
    data3_label_key = "X"
  end
  tree:add_le(actor_control_self_fields.data3, data3_tvbr, data3_val, data3_label_key .. ": " .. data3_label_val)

  -- dissect the data4 field
  local data4_tvbr = tvbuf:range(20, 4)
  local data4_val  = data4_tvbr:le_uint()
  local data4_label_key = "Data4"
  local data4_label_val = data4_val
  if type_val == 125 then
    data4_label_key = "Y"
  end
  tree:add_le(actor_control_self_fields.data4, data4_tvbr, data4_val, data4_label_key .. ": " .. data4_label_val)

  -- dissect the data5 field
  local data5_tvbr = tvbuf:range(24, 4)
  local data5_val  = data5_tvbr:le_uint()
  local data5_label_key = "Data5"
  local data5_label_val = data5_val
  if type_val == 125 then
    data5_label_key = "Z"
  end
  tree:add_le(actor_control_self_fields.data5, data5_tvbr, data5_val, data5_label_key .. ": " .. data5_label_val)

  -- dissect the data6 field
  local data6_tvbr = tvbuf:range(28, 4)
  local data6_val  = data6_tvbr:le_uint()
  tree:add_le(actor_control_self_fields.data6, data6_tvbr, data6_val)

  return len
end