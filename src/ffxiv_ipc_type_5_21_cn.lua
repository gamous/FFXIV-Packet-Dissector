-- This file is generated by tools/json2lua.js

local M = {}
M.types = {
  [0x0146] = {
    [0] = {
      name = "ffxiv_ipc_actor_cast",
      length = 32,
    },
  },
  [0x0229] = {
    [0] = {
      name = "ffxiv_ipc_actor_control",
      length = 24,
    },
  },
  [0x025E] = {
    [0] = {
      name = "ffxiv_ipc_actor_control_self",
      length = 32,
    },
  },
  [0x036A] = {
    [0] = {
      name = "ffxiv_ipc_actor_gauge",
      length = 16,
    },
  },
  [0x0202] = {
    [0] = {
      name = "ffxiv_ipc_actor_move",
      length = 16,
    },
  },
  [0x0158] = {
    [0] = {
      name = "ffxiv_ipc_actor_set_pos",
      length = 24,
    },
  },
  [0x02D0] = {
    [0] = {
      name = "ffxiv_ipc_add_status_effect",
      length = 26,
    },
  },
  [0x021F] = {
    [0] = {
      name = "ffxiv_ipc_effect16",
      length = 1212,
    },
  },
  [0x00BB] = {
    [0] = {
      name = "ffxiv_ipc_effect24",
      length = 1788,
    },
  },
  [0x029F] = {
    [0] = {
      name = "ffxiv_ipc_effect32",
      length = 2364,
    },
  },
  [0x034A] = {
    [0] = {
      name = "ffxiv_ipc_effect8",
      length = 636,
    },
  },
  [0x0165] = {
    [0] = {
      name = "ffxiv_ipc_boss_status_effect_list",
      length = 744,
    },
  },
  [0x0204] = {
    [0] = {
      name = "ffxiv_ipc_client_trigger",
      length = 32,
    },
  },
  [0x0168] = {
    [0] = {
      name = "ffxiv_ipc_company_airship_status",
      length = 0,
    },
  },
  [0x0306] = {
    [0] = {
      name = "ffxiv_ipc_company_submersible_status",
      length = 0,
    },
  },
  [0x02eb] = {
    [0] = {
      name = "ffxiv_ipc_container_info",
      length = 16,
    },
  },
  [0x034F] = {
    [0] = {
      name = "ffxiv_ipc_content_finder_notify_pop",
      length = 32,
    },
  },
  [0x0375] = {
    [0] = {
      name = "ffxiv_ipc_currency_crystal_info",
      length = 32,
    },
  },
  [0x035E] = {
    [0] = {
      name = "ffxiv_ipc_effect",
      length = 124,
    },
  },
  [0x0174] = {
    [0] = {
      name = "ffxiv_ipc_examine",
      length = 656,
    },
  },
  [0x0080] = {
    [0] = {
      name = "ffxiv_ipc_fellowship_detail",
      length = 1192,
    },
    [1] = {
      name = "ffxiv_ipc_fellowship_info",
      length = 36,
    },
  },
  [0x0372] = {
    [0] = {
      name = "ffxiv_ipc_fellowship_info_query",
      length = 16,
    },
  },
  [0x00c1] = {
    [0] = {
      name = "ffxiv_ipc_fellowship_joined",
      length = 0,
    },
  },
  [0x02e5] = {
    [0] = {
      name = "ffxiv_ipc_fellowship_list",
      length = 16,
    },
    [1] = {
      name = "ffxiv_ipc_fellowship_message_board",
      length = 16,
    },
  },
  [0x0335] = {
    [0] = {
      name = "ffxiv_ipc_fellowship_member",
      length = 32,
    },
  },
  [0x031f] = {
    [0] = {
      name = "ffxiv_ipc_fellowship_info_query",
      length = 24,
    },
  },
  [0x021e] = {
    [0] = {
      name = "ffxiv_ipc_fellowship_member_set_group_handler",
      length = 24,
    },
  },
  [0x02ab] = {
    [0] = {
      name = "ffxiv_ipc_fellowship_message_board_query",
      length = 16,
    },
  },
  [0x0065] = {
    [0] = {
      name = "ffxiv_ipc_group_message",
      length = 57,
    },
  },
  [0x013C] = {
    [0] = {
      name = "ffxiv_ipc_init_zone",
      length = 96,
    },
  },
  [0x009a] = {
    [0] = {
      name = "ffxiv_ipc_inventory_action_ack",
      length = 16,
    },
  },
  [0x011E] = {
    [0] = {
      name = "ffxiv_ipc_inventory_transaction",
      length = 36,
    },
  },
  [0x01f0] = {
    [0] = {
      name = "ffxiv_ipc_inventory_transaction_finish",
      length = 16,
    },
  },
  [0x0211] = {
    [0] = {
      name = "ffxiv_ipc_npc_spawn",
      length = 636,
    },
  },
  [0x03c9] = {
    [0] = {
      name = "ffxiv_ipc_boss_npc_spawn",
      length = 640,
    },
  },
  [0x01dc] = {
    [0] = {
      name = "ffxiv_ipc_ping",
      length = 8,
    },
  },
  [0x03A0] = {
    [0] = {
      name = "ffxiv_ipc_player_spawn",
      length = 628,
    },
  },
  [0x00A7] = {
    [0] = {
      name = "ffxiv_ipc_player_stats",
      length = 224,
    },
  },
  [0x01f3] = {
    [0] = {
      name = "ffxiv_ipc_public_message",
      length = 48,
    },
  },
  [0x0179] = {
    [0] = {
      name = "ffxiv_ipc_retainer_information",
      length = 73,
    },
  },
  [0x00F0] = {
    [0] = {
      name = "ffxiv_ipc_status_effect_list",
      length = 384,
    },
  },
  [0x01B8] = {
    [0] = {
      name = "ffxiv_ipc_update_class_info",
      length = 16,
    },
  },
  [0x0237] = {
    [0] = {
      name = "ffxiv_ipc_update_hp_mp_tp",
      length = 8,
    },
  },
  [0x03c8] = {
    [0] = {
      name = "ffxiv_ipc_update_inventory_slot",
      length = 64,
    },
  },
  [0x02F0] = {
    [0] = {
      name = "ffxiv_ipc_item_info",
      length = 64,
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
