-- This file is generated by tools/json2lua.js

local M = {}
M.types = {
  [0x0141] = {
    [0] = {
      name = "ffxiv_ipc_add_status_effect",
      length = 30,
    },
  },
  [0x010c] = {
    [0] = {
      name = "ffxiv_ipc_announcement",
      length = 0,
    },
  },
  [0x015b] = {
    [0] = {
      name = "ffxiv_ipc_client_action",
      length = 24,
    },
  },
  [0x01b9] = {
    [0] = {
      name = "ffxiv_ipc_craft_status",
      length = 24,
    },
  },
  [0x0197] = {
    [0] = {
      name = "ffxiv_ipc_item_count",
      length = 16,
    },
  },
  [0x019b] = {
    [0] = {
      name = "ffxiv_ipc_item_simple",
      length = 32,
    },
  },
  [0x0151] = {
    [0] = {
      name = "ffxiv_ipc_status_effect_list",
      length = 20,
    },
  },
}

function M.getDissector(typeNum, length)
  local types = M.types[typeNum]
  if type(types) ~= "table" then
    return nil
  end

  for k, v in pairs(types) do
    if v.length == length then
      return Dissector.get(v.name)
    end
  end

  for k, v in pairs(types) do
    if v.length < length then
      return Dissector.get(v.name)
    end
  end

  return nil
end

return M
