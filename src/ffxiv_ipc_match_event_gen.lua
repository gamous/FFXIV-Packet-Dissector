-- This file is generated by tools/json2lua.js

local enum = require('ffxiv_enum')
local ffxiv_ipc_match_event = Proto("ffxiv_ipc_match_event", "FFXIV-IPC Match Event")

local match_event_fields = {
  type        = ProtoField.uint32("ffxiv_ipc_match_event.type", "Type", base.DEC, enum.reverse.match_event_type),
  reason      = ProtoField.uint32("ffxiv_ipc_match_event.reason", "Reason", base.DEC),
  unknown1    = ProtoField.uint32("ffxiv_ipc_match_event.unknown1", "Unknown1", base.DEC),
  unknown2    = ProtoField.uint32("ffxiv_ipc_match_event.unknown2", "Unknown2", base.DEC),
  unknown3    = ProtoField.uint32("ffxiv_ipc_match_event.unknown3", "Unknown3", base.DEC),
  roulette_id = ProtoField.uint8("ffxiv_ipc_match_event.roulette_id", "RouletteID", base.DEC),
  unknown4    = ProtoField.uint8("ffxiv_ipc_match_event.unknown4", "Unknown4", base.DEC),
  instance_id = ProtoField.uint16("ffxiv_ipc_match_event.instance_id", "InstanceID", base.DEC),
  unknown5    = ProtoField.uint32("ffxiv_ipc_match_event.unknown5", "Unknown5", base.DEC),
  unknown6    = ProtoField.uint32("ffxiv_ipc_match_event.unknown6", "Unknown6", base.DEC),
}

ffxiv_ipc_match_event.fields = match_event_fields

function ffxiv_ipc_match_event.dissector(tvbuf, pktinfo, root)
  local tree = root:add(ffxiv_ipc_match_event, tvbuf)
  pktinfo.cols.info:set("Match Event")

  -- dissect the type field
  local type_tvbr = tvbuf:range(0, 4)
  local type_val  = type_tvbr:le_uint()
  tree:add_le(match_event_fields.type, type_tvbr, type_val)

  -- dissect the reason field
  local reason_tvbr = tvbuf:range(4, 4)
  local reason_val  = reason_tvbr:le_uint()
  tree:add_le(match_event_fields.reason, reason_tvbr, reason_val)

  -- dissect the unknown1 field
  local unknown1_tvbr = tvbuf:range(8, 4)
  local unknown1_val  = unknown1_tvbr:le_uint()
  tree:add_le(match_event_fields.unknown1, unknown1_tvbr, unknown1_val)

  -- dissect the unknown2 field
  local unknown2_tvbr = tvbuf:range(12, 4)
  local unknown2_val  = unknown2_tvbr:le_uint()
  tree:add_le(match_event_fields.unknown2, unknown2_tvbr, unknown2_val)

  -- dissect the unknown3 field
  local unknown3_tvbr = tvbuf:range(16, 4)
  local unknown3_val  = unknown3_tvbr:le_uint()
  tree:add_le(match_event_fields.unknown3, unknown3_tvbr, unknown3_val)

  -- dissect the roulette_id field
  local roulette_id_tvbr = tvbuf:range(20, 1)
  local roulette_id_val  = roulette_id_tvbr:le_uint()
  tree:add_le(match_event_fields.roulette_id, roulette_id_tvbr, roulette_id_val)

  -- dissect the unknown4 field
  local unknown4_tvbr = tvbuf:range(21, 1)
  local unknown4_val  = unknown4_tvbr:le_uint()
  tree:add_le(match_event_fields.unknown4, unknown4_tvbr, unknown4_val)

  -- dissect the instance_id field
  local instance_id_tvbr = tvbuf:range(22, 2)
  local instance_id_val  = instance_id_tvbr:le_uint()
  tree:add_le(match_event_fields.instance_id, instance_id_tvbr, instance_id_val)

  -- dissect the unknown5 field
  local unknown5_tvbr = tvbuf:range(24, 4)
  local unknown5_val  = unknown5_tvbr:le_uint()
  tree:add_le(match_event_fields.unknown5, unknown5_tvbr, unknown5_val)

  -- dissect the unknown6 field
  local unknown6_tvbr = tvbuf:range(28, 4)
  local unknown6_val  = unknown6_tvbr:le_uint()
  tree:add_le(match_event_fields.unknown6, unknown6_tvbr, unknown6_val)

  return tvbuf:len()
end