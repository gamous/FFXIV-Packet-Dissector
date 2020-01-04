-- This file is generated by tools/json2lua.js

local ffxiv_ipc_update_position_instance = Proto("ffxiv_ipc_update_position_instance", "FFXIV-IPC UpdatePositionInstance")

local update_position_instance_fields = {
  unknown0 = ProtoField.uint32("ffxiv_ipc_update_position_instance.unknown0", "unknown0", base.DEC),
  unknown1 = ProtoField.uint32("ffxiv_ipc_update_position_instance.unknown1", "unknown1", base.DEC),
  unknown2 = ProtoField.uint32("ffxiv_ipc_update_position_instance.unknown2", "unknown2", base.DEC),
  unknown3 = ProtoField.uint32("ffxiv_ipc_update_position_instance.unknown3", "unknown3", base.DEC),
  unknown4 = ProtoField.uint32("ffxiv_ipc_update_position_instance.unknown4", "unknown4", base.DEC),
  unknown5 = ProtoField.uint32("ffxiv_ipc_update_position_instance.unknown5", "unknown5", base.DEC),
  unknown6 = ProtoField.uint32("ffxiv_ipc_update_position_instance.unknown6", "unknown6", base.DEC),
  unknown7 = ProtoField.uint32("ffxiv_ipc_update_position_instance.unknown7", "unknown7", base.DEC),
  unknown8 = ProtoField.uint32("ffxiv_ipc_update_position_instance.unknown8", "unknown8", base.DEC),
  unknown9 = ProtoField.uint32("ffxiv_ipc_update_position_instance.unknown9", "unknown9", base.DEC),
}

ffxiv_ipc_update_position_instance.fields = update_position_instance_fields

function ffxiv_ipc_update_position_instance.dissector(tvbuf, pktinfo, root)
  local tree = root:add(ffxiv_ipc_update_position_instance, tvbuf)
  pktinfo.cols.info:set("UpdatePositionInstance")

  -- dissect the unknown0 field
  local unknown0_tvbr = tvbuf:range(0, 4)
  local unknown0_val  = unknown0_tvbr:le_uint()
  tree:add_le(update_position_instance_fields.unknown0, unknown0_tvbr, unknown0_val)

  -- dissect the unknown1 field
  local unknown1_tvbr = tvbuf:range(4, 4)
  local unknown1_val  = unknown1_tvbr:le_uint()
  tree:add_le(update_position_instance_fields.unknown1, unknown1_tvbr, unknown1_val)

  -- dissect the unknown2 field
  local unknown2_tvbr = tvbuf:range(8, 4)
  local unknown2_val  = unknown2_tvbr:le_uint()
  tree:add_le(update_position_instance_fields.unknown2, unknown2_tvbr, unknown2_val)

  -- dissect the unknown3 field
  local unknown3_tvbr = tvbuf:range(12, 4)
  local unknown3_val  = unknown3_tvbr:le_uint()
  tree:add_le(update_position_instance_fields.unknown3, unknown3_tvbr, unknown3_val)

  -- dissect the unknown4 field
  local unknown4_tvbr = tvbuf:range(16, 4)
  local unknown4_val  = unknown4_tvbr:le_uint()
  tree:add_le(update_position_instance_fields.unknown4, unknown4_tvbr, unknown4_val)

  -- dissect the unknown5 field
  local unknown5_tvbr = tvbuf:range(20, 4)
  local unknown5_val  = unknown5_tvbr:le_uint()
  tree:add_le(update_position_instance_fields.unknown5, unknown5_tvbr, unknown5_val)

  -- dissect the unknown6 field
  local unknown6_tvbr = tvbuf:range(24, 4)
  local unknown6_val  = unknown6_tvbr:le_uint()
  tree:add_le(update_position_instance_fields.unknown6, unknown6_tvbr, unknown6_val)

  -- dissect the unknown7 field
  local unknown7_tvbr = tvbuf:range(28, 4)
  local unknown7_val  = unknown7_tvbr:le_uint()
  tree:add_le(update_position_instance_fields.unknown7, unknown7_tvbr, unknown7_val)

  -- dissect the unknown8 field
  local unknown8_tvbr = tvbuf:range(32, 4)
  local unknown8_val  = unknown8_tvbr:le_uint()
  tree:add_le(update_position_instance_fields.unknown8, unknown8_tvbr, unknown8_val)

  -- dissect the unknown9 field
  local unknown9_tvbr = tvbuf:range(36, 4)
  local unknown9_val  = unknown9_tvbr:le_uint()
  tree:add_le(update_position_instance_fields.unknown9, unknown9_tvbr, unknown9_val)

  return tvbuf:len()
end