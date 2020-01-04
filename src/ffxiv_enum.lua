-- This file is generated by tools/json2lua.js

local M = {
  forward = {},
  reverse = {}
}

local function makeValString(enumTable)
  local t = {}
  for name,num in pairs(enumTable) do
      t[num] = name
  end
  return t
end


M.forward.actor_control142_type = {
  DoT = 23,
  CancelAbility = 15,
  Death = 6,
  TargetIcon = 34,
  BuffRemove = 21,
  NameToggle = 54,
}
M.reverse.actor_control142_type = makeValString(M.forward.actor_control142_type)

M.forward.actor_control143_type = {
  ToggleWeapon = 0,
  AutoAttack = 1,
  SetStatus = 2,
  CastStart = 3,
  ToggleAggro = 4,
  ClassJobChange = 5,
  DefeatMsg = 6,
  GainExpMsg = 7,
  LevelUpEffect = 10,
  ExpChainMsg = 12,
  HpSetStat = 13,
  DeathAnimation = 14,
  CastInterrupt = 15,
  ActionStart = 17,
  StatusEffectGain = 20,
  StatusEffectLose = 21,
  HPFloatingText = 23,
  UpdateRestedExp = 24,
  Unk2 = 25,
  Flee = 27,
  Unk3 = 32,
  CombatIndicationShow = 34,
  SpawnEffect = 37,
  ToggleInvisible = 38,
  ToggleActionUnlock = 41,
  UpdateUiExp = 43,
  DmgTakenMsg = 45,
  SetTarget = 50,
  ToggleNameHidden = 54,
  LimitbreakStart = 71,
  LimitbreakPartyStart = 72,
  BubbleText = 73,
  DamageEffect = 80,
  RaiseAnimation = 81,
  TreasureScreenMsg = 87,
  SetOwnerId = 89,
  ItemRepairMsg = 92,
  BluActionLearn = 99,
  DirectorInit = 100,
  DirectorClear = 101,
  LeveStartAnim = 102,
  LeveStartError = 103,
  DirectorEObjMod = 106,
  DirectorUpdate = 109,
  FateStart = 116,
  ItemObtainMsg = 117,
  FateEnd = 121,
  DutyQuestScreenMsg = 123,
  ItemObtainIcon = 132,
  FateItemFailMsg = 133,
  ItemFailMsg = 134,
  ActionLearnMsg1 = 135,
  FreeEventPos = 138,
  DailyQuestSeed = 144,
  FateProgress = 155,
  SetBGM = 161,
  UnlockAetherCurrentMsg = 164,
  RemoveName = 168,
  ScreenFadeOut = 170,
  FateNpc = 178,
  ZoneIn = 200,
  ZoneInDefaultPos = 201,
  TeleportStart = 203,
  TeleportDone = 205,
  TeleportDoneFadeOut = 206,
  DespawnZoneScreenMsg = 207,
  InstanceSelectDlg = 210,
  ActorDespawnEffect = 212,
  CompanionUnlock = 253,
  ObtainBarding = 254,
  EquipBarding = 255,
  CompanionMsg1 = 258,
  CompanionMsg2 = 259,
  ShowPetHotbar = 260,
  ActionLearnMsg = 265,
  ActorFadeOut = 266,
  ActorFadeIn = 267,
  WithdrawMsg = 268,
  OrderCompanion = 269,
  ToggleCompanion = 270,
  LearnCompanion = 271,
  ActorFateOut1 = 272,
  Emote = 290,
  EmoteInterrupt = 291,
  SetPose = 295,
  CraftingUnk = 300,
  GatheringSenseMsg = 304,
  PartyMsg = 305,
  GatheringSenseMsg1 = 306,
  GatheringSenseMsg2 = 312,
  FishingMsg = 320,
  FishingTotalFishCaught = 322,
  FishingBaitMsg = 325,
  FishingReachMsg = 327,
  FishingFailMsg = 328,
  MateriaConvertMsg = 350,
  MeldSuccessMsg = 351,
  MeldFailMsg = 352,
  MeldModeToggle = 353,
  AetherRestoreMsg = 355,
  DyeMsg = 360,
  ToggleCrestMsg = 362,
  ToggleBulkCrestMsg = 363,
  MateriaRemoveMsg = 364,
  GlamourCastMsg = 365,
  GlamourRemoveMsg = 366,
  RelicInfuseMsg = 377,
  PlayerCurrency = 378,
  AetherReductionDlg = 381,
  EObjSetState = 409,
  Unk6 = 412,
  EObjAnimation = 413,
  SetTitle = 500,
  SetStatusIcon = 504,
  LimitBreakGauge = 505,
  SetHomepoint = 507,
  SetFavorite = 508,
  LearnTeleport = 509,
  OpenRecommendationGuide = 512,
  ArmoryErrorMsg = 513,
  AchievementPopup = 515,
  LogMsg = 517,
  AchievementMsg = 518,
  SetItemLevel = 521,
  ChallengeEntryCompleteMsg = 523,
  ChallengeEntryUnlockMsg = 524,
  DesynthOrReductionResult = 527,
  GilTrailMsg = 529,
  HuntingLogRankUnlock = 541,
  HuntingLogEntryUpdate = 542,
  HuntingLogSectionFinish = 543,
  HuntingLogRankFinish = 544,
  SetMaxGearSets = 560,
  SetCharaGearParamUI = 608,
  ToggleWireframeRendering = 609,
  ExamineError = 703,
  GearSetEquipMsg = 801,
  SetFestival = 902,
  ToggleOrchestrionUnlock = 918,
  SetMountSpeed = 927,
  Dismount = 929,
  BeginReplayAck = 930,
  EndReplayAck = 931,
  ShowHousingItemUI = 1015,
  ShowBuildPresetUI = 1001,
  ShowEstateExternalAppearanceUI = 1002,
  ShowEstateInternalAppearanceUI = 1003,
  BuildPresetResponse = 1005,
  RemoveExteriorHousingItem = 1007,
  RemoveInteriorHousingItem = 1009,
  HousingItemMoveConfirm = 1017,
  OpenEstateSettingsUI = 1023,
  HideAdditionalChambersDoor = 1024,
  HousingStoreroomStatus = 1049,
  SetPvPState = 1504,
  EndDuelSession = 1505,
  StartDuelCountdown = 1506,
  StartDuel = 1507,
  DuelResultScreen = 1508,
  SetDutyActionId = 1512,
  SetDutyActionHud = 1513,
  SetDutyActionActive = 1514,
  SetDutyActionRemaining = 1515,
  EurekaStep = 1850,
}
M.reverse.actor_control143_type = makeValString(M.forward.actor_control143_type)

M.forward.client_action_type = {
  Action = 8,
  CraftAction = 9,
  InvalidAction = 10,
}
M.reverse.client_action_type = makeValString(M.forward.client_action_type)

M.forward.cfnotify_type = {
  Cancelled = 3,
  Matched = 4,
  Enter = 6,
}
M.reverse.cfnotify_type = makeValString(M.forward.cfnotify_type)

M.forward.fish_event_type = {
  Cast = 1,
  Hook = 2,
  Finish = 3,
  Bite = 5,
}
M.reverse.fish_event_type = makeValString(M.forward.fish_event_type)

M.forward.group_message_type = {
  Linkshell = 2,
  FreeCompany = 3,
  NoviceNetwork = 4,
  Time = 333,
}
M.reverse.group_message_type = makeValString(M.forward.group_message_type)

M.forward.public_message_type = {
  Shout = 11,
  Yell = 30,
  Say = 10,
}
M.reverse.public_message_type = makeValString(M.forward.public_message_type)

M.forward.item_quality = {
  NormalQuality = 0,
  HighQuality = 1,
  Collectables = 8,
}
M.reverse.item_quality = makeValString(M.forward.item_quality)

M.forward.item_location = {
  Inventory0 = 0,
  Inventory1 = 1,
  Inventory2 = 2,
  Inventory3 = 3,
  ArmouryEquipped = 1000,
  Currency = 2000,
  Crystal = 2001,
  ArmouryOffHand = 3200,
  ArmouryHead = 3201,
  ArmouryBody = 3202,
  ArmouryHands = 3203,
  ArmouryWaist = 3204,
  ArmouryLegs = 3205,
  ArmouryFeet = 3206,
  ArmouryEars = 3207,
  ArmouryNeck = 3208,
  ArmouryWrists = 3209,
  ArmouryRightRing = 3210,
  ArmouryLeftRing = 3211,
  ArmouryRing = 3300,
  SoulCrystal = 3400,
  ArmouryMainHand = 3500,
  Saddlebag0 = 4000,
  Saddlebag1 = 4001,
}
M.reverse.item_location = makeValString(M.forward.item_location)

M.forward.item_armoury_position = {
  MainHand = 0,
  OffHand = 1,
  Head = 2,
  Body = 3,
  Hands = 4,
  Waist = 5,
  Legs = 6,
  Feet = 7,
  Ears = 8,
  Neck = 9,
  Wrists = 10,
  RightRing = 11,
  LeftRing = 12,
  SoulCrystal = 13,
}
M.reverse.item_armoury_position = makeValString(M.forward.item_armoury_position)

M.forward.item_quality = {
  NormalQuality = 0,
  HighQuality = 1,
  Collectables = 8,
}
M.reverse.item_quality = makeValString(M.forward.item_quality)

M.forward.item_location = {
  Inventory0 = 0,
  Inventory1 = 1,
  Inventory2 = 2,
  Inventory3 = 3,
  ArmouryEquipped = 1000,
  Currency = 2000,
  Crystal = 2001,
  ArmouryOffHand = 3200,
  ArmouryHead = 3201,
  ArmouryBody = 3202,
  ArmouryHands = 3203,
  ArmouryWaist = 3204,
  ArmouryLegs = 3205,
  ArmouryFeet = 3206,
  ArmouryEars = 3207,
  ArmouryNeck = 3208,
  ArmouryWrists = 3209,
  ArmouryRightRing = 3210,
  ArmouryLeftRing = 3211,
  ArmouryRing = 3300,
  SoulCrystal = 3400,
  ArmouryMainHand = 3500,
  Saddlebag0 = 4000,
  Saddlebag1 = 4001,
}
M.reverse.item_location = makeValString(M.forward.item_location)

M.forward.item_armoury_position = {
  MainHand = 0,
  OffHand = 1,
  Head = 2,
  Body = 3,
  Hands = 4,
  Waist = 5,
  Legs = 6,
  Feet = 7,
  Ears = 8,
  Neck = 9,
  Wrists = 10,
  RightRing = 11,
  LeftRing = 12,
  SoulCrystal = 13,
}
M.reverse.item_armoury_position = makeValString(M.forward.item_armoury_position)

return M
