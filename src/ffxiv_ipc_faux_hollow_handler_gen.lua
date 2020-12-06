-- This file is generated by tools/json2lua.js

local ffxiv_ipc_faux_hollow_handler = Proto("ffxiv_ipc_faux_hollow_handler", "FFXIV-IPC Faux Hollow Handler")

local faux_hollow_handler_fields = {
  unknown1 = ProtoField.uint32("ffxiv_ipc_faux_hollow_handler.unknown1", "Unknown1", base.DEC),
  unknown1 = ProtoField.uint32("ffxiv_ipc_faux_hollow_handler.unknown1", "Unknown1", base.DEC),
  unknown2 = ProtoField.uint32("ffxiv_ipc_faux_hollow_handler.unknown2", "Unknown2", base.DEC),
  row      = ProtoField.uint32("ffxiv_ipc_faux_hollow_handler.row", "Row", base.DEC),
  column   = ProtoField.uint32("ffxiv_ipc_faux_hollow_handler.column", "Column", base.DEC),
  unknown3 = ProtoField.uint32("ffxiv_ipc_faux_hollow_handler.unknown3", "unknown3", base.DEC),
  unknown4 = ProtoField.uint32("ffxiv_ipc_faux_hollow_handler.unknown4", "unknown4", base.DEC),
  unknown6 = ProtoField.uint32("ffxiv_ipc_faux_hollow_handler.unknown6", "unknown6", base.DEC),
}

ffxiv_ipc_faux_hollow_handler.fields = faux_hollow_handler_fields

function ffxiv_ipc_faux_hollow_handler.dissector(tvbuf, pktinfo, root)
  local tree = root:add(ffxiv_ipc_faux_hollow_handler, tvbuf)
  pktinfo.cols.info:set("Faux Hollow Handler")

  local len = tvbuf:len()

  -- dissect the unknown1 field
  local unknown1_tvbr = tvbuf:range(0, 4)
  local unknown1_val  = unknown1_tvbr:le_uint()
  tree:add_le(faux_hollow_handler_fields.unknown1, unknown1_tvbr, unknown1_val)

  -- dissect the unknown1 field
  local unknown1_tvbr = tvbuf:range(4, 4)
  local unknown1_val  = unknown1_tvbr:le_uint()
  tree:add_le(faux_hollow_handler_fields.unknown1, unknown1_tvbr, unknown1_val)

  -- dissect the unknown2 field
  local unknown2_tvbr = tvbuf:range(8, 4)
  local unknown2_val  = unknown2_tvbr:le_uint()
  tree:add_le(faux_hollow_handler_fields.unknown2, unknown2_tvbr, unknown2_val)

  -- dissect the row field
  local row_tvbr = tvbuf:range(12, 4)
  local row_val  = row_tvbr:le_uint()
  tree:add_le(faux_hollow_handler_fields.row, row_tvbr, row_val)

  local row_display = ", Row: " .. row_val
  pktinfo.cols.info:append(row_display)
  tree:append_text(row_display)

  -- dissect the column field
  local column_tvbr = tvbuf:range(16, 4)
  local column_val  = column_tvbr:le_uint()
  tree:add_le(faux_hollow_handler_fields.column, column_tvbr, column_val)

  local column_display = ", Column: " .. column_val
  pktinfo.cols.info:append(column_display)
  tree:append_text(column_display)

  -- dissect the unknown3 field
  local unknown3_tvbr = tvbuf:range(20, 4)
  local unknown3_val  = unknown3_tvbr:le_uint()
  tree:add_le(faux_hollow_handler_fields.unknown3, unknown3_tvbr, unknown3_val)

  -- dissect the unknown4 field
  local unknown4_tvbr = tvbuf:range(24, 4)
  local unknown4_val  = unknown4_tvbr:le_uint()
  tree:add_le(faux_hollow_handler_fields.unknown4, unknown4_tvbr, unknown4_val)

  -- dissect the unknown6 field
  local unknown6_tvbr = tvbuf:range(28, 4)
  local unknown6_val  = unknown6_tvbr:le_uint()
  tree:add_le(faux_hollow_handler_fields.unknown6, unknown6_tvbr, unknown6_val)

  return len
end