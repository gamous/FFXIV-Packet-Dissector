-- This file is generated by tools/json2lua.js

local db = require('ffxiv_db')
local enum = require('ffxiv_enum')
local ffxiv_ipc_group_message = Proto("ffxiv_ipc_group_message", "FFXIV-IPC Group Message")

local group_message_fields = {
  group_id     = ProtoField.uint32("ffxiv_ipc_group_message.group_id", "GroupID", base.DEC),
  type         = ProtoField.uint16("ffxiv_ipc_group_message.type", "Type", base.DEC, enum.reverse.group_message_type),
  server       = ProtoField.uint16("ffxiv_ipc_group_message.server", "Server", base.DEC, db.server),
  unique_id    = ProtoField.uint64("ffxiv_ipc_group_message.unique_id", "UniqueID", base.HEX),
  character_id = ProtoField.uint32("ffxiv_ipc_group_message.character_id", "CharacterID", base.DEC),
  user_server  = ProtoField.uint16("ffxiv_ipc_group_message.user_server", "UserServer", base.DEC, db.server),
  reserved0    = ProtoField.uint8("ffxiv_ipc_group_message.reserved0", "Reserved0", base.DEC),
  nickname     = ProtoField.string("ffxiv_ipc_group_message.nickname", "Nickname", base.UNICODE),
  content      = ProtoField.string("ffxiv_ipc_group_message.content", "Content", base.UNICODE),
}

ffxiv_ipc_group_message.fields = group_message_fields

function ffxiv_ipc_group_message.dissector(tvbuf, pktinfo, root)
  local tree = root:add(ffxiv_ipc_group_message, tvbuf)
  pktinfo.cols.info:set("Group Message")

  -- dissect the group_id field
  local group_id_tvbr = tvbuf:range(0, 4)
  local group_id_val  = group_id_tvbr:le_uint()
  tree:add_le(group_message_fields.group_id, group_id_tvbr, group_id_val)

  -- dissect the type field
  local type_tvbr = tvbuf:range(4, 2)
  local type_val  = type_tvbr:le_uint()
  tree:add_le(group_message_fields.type, type_tvbr, type_val)

  -- dissect the server field
  local server_tvbr = tvbuf:range(6, 2)
  local server_val  = server_tvbr:le_uint()
  tree:add_le(group_message_fields.server, server_tvbr, server_val)

  -- dissect the unique_id field
  local unique_id_tvbr = tvbuf:range(8, 8)
  local unique_id_val  = unique_id_tvbr:le_uint64()
  tree:add_le(group_message_fields.unique_id, unique_id_tvbr, unique_id_val)

  -- dissect the character_id field
  local character_id_tvbr = tvbuf:range(16, 4)
  local character_id_val  = character_id_tvbr:le_uint()
  tree:add_le(group_message_fields.character_id, character_id_tvbr, character_id_val)

  -- dissect the user_server field
  local user_server_tvbr = tvbuf:range(20, 2)
  local user_server_val  = user_server_tvbr:le_uint()
  tree:add_le(group_message_fields.user_server, user_server_tvbr, user_server_val)

  -- dissect the reserved0 field
  local reserved0_tvbr = tvbuf:range(22, 1)
  local reserved0_val  = reserved0_tvbr:le_uint()
  tree:add_le(group_message_fields.reserved0, reserved0_tvbr, reserved0_val)

  -- dissect the nickname field
  if tvbuf:len() > 55 then
    local nickname_tvbr = tvbuf:range(23, 32)
    local nickname_val  = nickname_tvbr:string(ENC_UTF_8)
    tree:add(group_message_fields.nickname, nickname_tvbr, nickname_val)
  end

  -- dissect the content field
  if tvbuf:len() > 55 then
    local content_tvbr = tvbuf:range(55)
    local content_val  = content_tvbr:string(ENC_UTF_8)
    tree:add(group_message_fields.content, content_tvbr, content_val)
  end

  return tvbuf:len()
end