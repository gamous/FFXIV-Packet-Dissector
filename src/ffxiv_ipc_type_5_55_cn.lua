-- This file is generated by tools/json2lua.js

local M = {}
M.types = {
  [0x00EF] = {
    [0] = {
      name = "ffxiv_ipc_actor_cast",
      length = 32,
    },
  },
  [0x01D8] = {
    [0] = {
      name = "ffxiv_ipc_actor_control",
      length = 24,
    },
  },
  [0x0354] = {
    [0] = {
      name = "ffxiv_ipc_actor_control_self",
      length = 32,
    },
  },
  [0x031E] = {
    [0] = {
      name = "ffxiv_ipc_actor_control_target",
      length = 32,
    },
  },
  [0x0226] = {
    [0] = {
      name = "ffxiv_ipc_actor_gauge",
      length = 16,
    },
  },
  [0x0262] = {
    [0] = {
      name = "ffxiv_ipc_actor_move",
      length = 16,
    },
    [1] = {
      name = "ffxiv_ipc_update_position_instance",
      length = 40,
    },
  },
  [0x0259] = {
    [0] = {
      name = "ffxiv_ipc_actor_set_pos",
      length = 24,
    },
  },
  [0x00D2] = {
    [0] = {
      name = "ffxiv_ipc_effect16",
      length = 1212,
    },
  },
  [0x0297] = {
    [0] = {
      name = "ffxiv_ipc_effect24",
      length = 1788,
    },
  },
  [0x01F1] = {
    [0] = {
      name = "ffxiv_ipc_effect32",
      length = 2364,
    },
  },
  [0x03C0] = {
    [0] = {
      name = "ffxiv_ipc_effect8",
      length = 636,
    },
  },
  [0x0270] = {
    [0] = {
      name = "ffxiv_ipc_client_trigger",
      length = 32,
    },
  },
  [0x010D] = {
    [0] = {
      name = "ffxiv_ipc_company_airship_status",
      length = 0,
    },
  },
  [0x0284] = {
    [0] = {
      name = "ffxiv_ipc_company_submersible_status",
      length = 0,
    },
  },
  [0x01EF] = {
    [0] = {
      name = "ffxiv_ipc_container_info",
      length = 16,
    },
  },
  [0x01DD] = {
    [0] = {
      name = "ffxiv_ipc_content_finder_notify_pop",
      length = 32,
    },
  },
  [0x036B] = {
    [0] = {
      name = "ffxiv_ipc_currency_crystal_info",
      length = 32,
    },
  },
  [0x006E] = {
    [0] = {
      name = "ffxiv_ipc_effect",
      length = 124,
    },
  },
  [0x0315] = {
    [0] = {
      name = "ffxiv_ipc_effect_result",
      length = 26,
    },
  },
  [0x02F1] = {
    [0] = {
      name = "ffxiv_ipc_examine",
      length = 656,
    },
  },
  [0x006c] = {
    [0] = {
      name = "ffxiv_ipc_group_message",
      length = 57,
    },
  },
  [0x0343] = {
    [0] = {
      name = "ffxiv_ipc_init_zone",
      length = 96,
    },
  },
  [0x0293] = {
    [0] = {
      name = "ffxiv_ipc_inventory_action_ack",
      length = 16,
    },
  },
  [0x0167] = {
    [0] = {
      name = "ffxiv_ipc_inventory_transaction",
      length = 36,
    },
  },
  [0x01B1] = {
    [0] = {
      name = "ffxiv_ipc_inventory_transaction_finish",
      length = 16,
    },
  },
  [0x0242] = {
    [0] = {
      name = "ffxiv_ipc_npc_spawn",
      length = 636,
    },
  },
  [0x0174] = {
    [0] = {
      name = "ffxiv_ipc_object_spawn",
      length = 64,
    },
  },
  [0x01EB] = {
    [0] = {
      name = "ffxiv_ipc_player_spawn",
      length = 628,
    },
  },
  [0x03A0] = {
    [0] = {
      name = "ffxiv_ipc_player_stats",
      length = 224,
    },
  },
  [0x0145] = {
    [0] = {
      name = "ffxiv_ipc_public_message",
      length = 48,
    },
  },
  [0x03B6] = {
    [0] = {
      name = "ffxiv_ipc_retainer_information",
      length = 73,
    },
  },
  [0x0347] = {
    [0] = {
      name = "ffxiv_ipc_status_effect_list",
      length = 384,
    },
  },
  [0x02AA] = {
    [0] = {
      name = "ffxiv_ipc_update_class_info",
      length = 16,
    },
  },
  [0x03DA] = {
    [0] = {
      name = "ffxiv_ipc_update_hp_mp_tp",
      length = 8,
    },
  },
  [0x01A1] = {
    [0] = {
      name = "ffxiv_ipc_update_inventory_slot",
      length = 64,
    },
  },
  [0x0103] = {
    [0] = {
      name = "ffxiv_ipc_item_info",
      length = 64,
    },
  },
  [0x0249] = {
    [0] = {
      name = "ffxiv_ipc_ward_land_info",
      length = 8,
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
