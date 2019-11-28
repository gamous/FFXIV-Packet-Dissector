-- This file is generated by tools/json2lua.js

local ffxiv_ipc_add_status_effect = Proto("ffxiv_ipc_add_status_effect", "FFXIV-IPC AddStatusEffect")

local add_status_effect_fields = {
  last_buff_packet_id = ProtoField.uint32("ffxiv_ipc_add_status_effect.last_buff_packet_id", "LastBuffPacketID", base.DEC),
  user_id             = ProtoField.uint32("ffxiv_ipc_add_status_effect.user_id", "UserID", base.DEC),
  unknown1            = ProtoField.uint16("ffxiv_ipc_add_status_effect.unknown1", "Unknown1", base.DEC),
  unknown2            = ProtoField.uint16("ffxiv_ipc_add_status_effect.unknown2", "Unknown2", base.DEC),
  current_hp          = ProtoField.uint32("ffxiv_ipc_add_status_effect.current_hp", "CurrentHP", base.DEC),
  current_mp          = ProtoField.uint16("ffxiv_ipc_add_status_effect.current_mp", "CurrentMP", base.DEC),
  current_tp          = ProtoField.uint16("ffxiv_ipc_add_status_effect.current_tp", "CurrentTP", base.DEC),
  max_hp              = ProtoField.uint32("ffxiv_ipc_add_status_effect.max_hp", "MaxHP", base.DEC),
  max_mp              = ProtoField.uint16("ffxiv_ipc_add_status_effect.max_mp", "MaxMP", base.DEC),
  count               = ProtoField.uint8("ffxiv_ipc_add_status_effect.count", "Count", base.DEC),
  unknown3            = ProtoField.uint8("ffxiv_ipc_add_status_effect.unknown3", "Unknown3", base.DEC),
  unknown4            = ProtoField.uint16("ffxiv_ipc_add_status_effect.unknown4", "Unknown4", base.DEC),
  status_id           = ProtoField.uint16("ffxiv_ipc_add_status_effect.status_id", "StatusID", base.DEC),
  status_extra        = ProtoField.uint16("ffxiv_ipc_add_status_effect.status_extra", "StatusExtra", base.DEC),
  unknown1            = ProtoField.uint16("ffxiv_ipc_add_status_effect.unknown1", "Unknown1", base.DEC),
  duration            = ProtoField.float("ffxiv_ipc_add_status_effect.duration", "Duration", base.DEC),
  actor_id            = ProtoField.uint32("ffxiv_ipc_add_status_effect.actor_id", "ActorID", base.DEC),
  unknown2            = ProtoField.uint16("ffxiv_ipc_add_status_effect.unknown2", "Unknown2", base.DEC),
}

ffxiv_ipc_add_status_effect.fields = add_status_effect_fields

function ffxiv_ipc_add_status_effect.dissector(tvbuf, pktinfo, root)
  local tree = root:add(ffxiv_ipc_add_status_effect, tvbuf)
  pktinfo.cols.info:set("AddStatusEffect")

  -- dissect the last_buff_packet_id field
  local last_buff_packet_id_tvbr = tvbuf:range(0, 4)
  local last_buff_packet_id_val  = last_buff_packet_id_tvbr:le_uint()
  tree:add_le(add_status_effect_fields.last_buff_packet_id, last_buff_packet_id_tvbr, last_buff_packet_id_val)

  -- dissect the user_id field
  local user_id_tvbr = tvbuf:range(4, 4)
  local user_id_val  = user_id_tvbr:le_uint()
  tree:add_le(add_status_effect_fields.user_id, user_id_tvbr, user_id_val)

  -- dissect the unknown1 field
  local unknown1_tvbr = tvbuf:range(8, 2)
  local unknown1_val  = unknown1_tvbr:le_uint()
  tree:add_le(add_status_effect_fields.unknown1, unknown1_tvbr, unknown1_val)

  -- dissect the unknown2 field
  local unknown2_tvbr = tvbuf:range(10, 2)
  local unknown2_val  = unknown2_tvbr:le_uint()
  tree:add_le(add_status_effect_fields.unknown2, unknown2_tvbr, unknown2_val)

  -- dissect the current_hp field
  local current_hp_tvbr = tvbuf:range(12, 4)
  local current_hp_val  = current_hp_tvbr:le_uint()
  tree:add_le(add_status_effect_fields.current_hp, current_hp_tvbr, current_hp_val)

  -- dissect the current_mp field
  local current_mp_tvbr = tvbuf:range(16, 2)
  local current_mp_val  = current_mp_tvbr:le_uint()
  tree:add_le(add_status_effect_fields.current_mp, current_mp_tvbr, current_mp_val)

  -- dissect the current_tp field
  local current_tp_tvbr = tvbuf:range(18, 2)
  local current_tp_val  = current_tp_tvbr:le_uint()
  tree:add_le(add_status_effect_fields.current_tp, current_tp_tvbr, current_tp_val)

  -- dissect the max_hp field
  local max_hp_tvbr = tvbuf:range(20, 4)
  local max_hp_val  = max_hp_tvbr:le_uint()
  tree:add_le(add_status_effect_fields.max_hp, max_hp_tvbr, max_hp_val)

  -- dissect the max_mp field
  local max_mp_tvbr = tvbuf:range(24, 2)
  local max_mp_val  = max_mp_tvbr:le_uint()
  tree:add_le(add_status_effect_fields.max_mp, max_mp_tvbr, max_mp_val)

  -- dissect the count field
  local count_tvbr = tvbuf:range(25, 1)
  local count_val  = count_tvbr:le_uint()
  tree:add_le(add_status_effect_fields.count, count_tvbr, count_val)

  -- dissect the unknown3 field
  local unknown3_tvbr = tvbuf:range(26, 1)
  local unknown3_val  = unknown3_tvbr:le_uint()
  tree:add_le(add_status_effect_fields.unknown3, unknown3_tvbr, unknown3_val)

  -- dissect the unknown4 field
  local unknown4_tvbr = tvbuf:range(28, 2)
  local unknown4_val  = unknown4_tvbr:le_uint()
  tree:add_le(add_status_effect_fields.unknown4, unknown4_tvbr, unknown4_val)

  -- dissect the status_id field
  local status_id_tvbr = tvbuf:range(0, 2)
  local status_id_val  = status_id_tvbr:le_uint()
  tree:add_le(add_status_effect_fields.status_id, status_id_tvbr, status_id_val)

  -- dissect the status_extra field
  local status_extra_tvbr = tvbuf:range(2, 2)
  local status_extra_val  = status_extra_tvbr:le_uint()
  tree:add_le(add_status_effect_fields.status_extra, status_extra_tvbr, status_extra_val)

  -- dissect the unknown1 field
  local unknown1_tvbr = tvbuf:range(4, 2)
  local unknown1_val  = unknown1_tvbr:le_uint()
  tree:add_le(add_status_effect_fields.unknown1, unknown1_tvbr, unknown1_val)

  -- dissect the duration field
  local duration_tvbr = tvbuf:range(6, 4)
  local duration_val  = duration_tvbr:le_float()
  tree:add_le(add_status_effect_fields.duration, duration_tvbr, duration_val)

  -- dissect the actor_id field
  local actor_id_tvbr = tvbuf:range(10, 4)
  local actor_id_val  = actor_id_tvbr:le_uint()
  tree:add_le(add_status_effect_fields.actor_id, actor_id_tvbr, actor_id_val)

  -- dissect the unknown2 field
  local unknown2_tvbr = tvbuf:range(14, 2)
  local unknown2_val  = unknown2_tvbr:le_uint()
  tree:add_le(add_status_effect_fields.unknown2, unknown2_tvbr, unknown2_val)

  return tvbuf:len()
end