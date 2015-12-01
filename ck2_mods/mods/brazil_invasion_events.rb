BrazilInvasionEvents = PropertyList[
  "namespace", "BRAZIL",
  "province_event", PropertyList[
    "id", "BRAZIL.1",
    "desc", "EVTDESC_BRAZIL_001",
    "picture", "GFX_evt_aztec_explorers",
    "border", "GFX_event_normal_frame_war",
    "trigger", PropertyList[
      "has_dlc", "Sunset Invasion",
      "year", 1250,
      "NOT", PropertyList["year", 1350],
      "NOT", PropertyList["has_global_flag", "brazilian_explorers"],
      "OR", PropertyList[
        "province_id", 1,
        "province_id", 9,
        "province_id", 35,
        "province_id", 31,
        "province_id", 104,
        "province_id", 149,
        "province_id", 156,
        "province_id", 162,
        "province_id", 841,
        "province_id", 845,
      ],
    ],
    "immediate", PropertyList[
      "set_global_flag", "brazilian_explorers",
      "set_province_flag", "brazilian_explorers",
      "activate_title", PropertyList[
        "title", "e_brazil",
        "status", true,
      ],
      "k_papal_state", PropertyList["holder_scope", PropertyList[
        "create_random_soldier", PropertyList[
          "dynasty", 1035000,
          "random_traits", true,
          "culture", "brazilian",
          "religion", "catholic",
        ],
        "new_character", PropertyList[
          "e_brazil", PropertyList["grant_title", "PREV"],
          "set_defacto_liege", "THIS",
          "narrative_event", PropertyList[
            "id", "BRAZIL.2",
            "days", 7,
          ],
        ],
      ]],
    ],
    "mean_time_to_happen", PropertyList[
      "months", 720,
      "modifier", PropertyList[
        "factor", 0.5,
        "year", 1320,
      ],
    ],
    "option", PropertyList["name", "EVTOPTA_BRAZIL_001"],
  ],
  "narrative_event", PropertyList[
    "id", "BRAZIL.2",
    "title", "EVTNAME_BRAZIL_002",
    "desc", "EVTDESC_BRAZIL_002",
    "major", true,
    "picture", "GFX_evt_aztec_explorers",
    "border", "GFX_event_narrative_frame_war",
    "is_triggered_only", true,
    "major_trigger", PropertyList["FROM", PropertyList["owner", PropertyList["NOT", PropertyList["character", "PREVPREV"]]]],
    "immediate", PropertyList["e_brazil", PropertyList["holder_scope", PropertyList["character_event", PropertyList["id", "CM.10018"]]]],
    "option", PropertyList["name", "EVTOPTA_BRAZIL_002"],
  ],
  "province_event", PropertyList[
    "id", "BRAZIL.3",
    "desc", "EVTDESC_BRAZIL_003",
    "picture", "GFX_evt_battle_mesoamerican",
    "border", "GFX_event_normal_frame_war",
    "trigger", PropertyList[
      "year", 1250,
      "NOT", PropertyList["has_global_flag", "brazilian_arrival"],
      "had_province_flag", PropertyList[
        "flag", "brazilian_explorers",
        "days", 730,
      ],
    ],
    "immediate", PropertyList[
      "set_global_flag", "brazilian_arrival",
      "e_brazil", PropertyList["holder_scope", PropertyList["narrative_event", PropertyList["id", "BRAZIL.4"]]],
    ],
    "mean_time_to_happen", PropertyList["months", 6],
    "option", PropertyList["name", "EVTOPTA_BRAZIL_003"],
  ],
  "narrative_event", PropertyList[
    "id", "BRAZIL.4",
    "title", "EVTNAME_BRAZIL_004",
    "desc", "EVTDESC_BRAZIL_004",
    "major", true,
    "hide_new", true,
    "picture", "GFX_evt_battle_mesoamerican",
    "border", "GFX_event_narrative_frame_war",
    "is_triggered_only", true,
    "major_trigger", PropertyList["FROM", PropertyList["owner", PropertyList["NOT", PropertyList["character", "PREVPREV"]]]],
    "immediate", PropertyList[
      "any_playable_ruler", PropertyList[
        "limit", PropertyList[
          "ai", false,
          "capital_scope", PropertyList["NOT", PropertyList["region", "world_india"]],
        ],
        "character_event", PropertyList["id", "CM.10020"],
      ],
      "wealth", 10000,
      "FROM", PropertyList["kingdom", PropertyList["ROOT", PropertyList["war", PropertyList[
        "casus_belli", "tribal_invasion",
        "target", "PREVPREV",
        "thirdparty_title", "PREV",
      ]]]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 30,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 25,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 22,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 31,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 24,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 23,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 30,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 25,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 22,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 18,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 28,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 29,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "random", PropertyList[
        "chance", 50,
        "create_character", PropertyList[
          "random_traits", true,
          "dynasty", "random",
          "religion", "catholic",
          "culture", "brazilian",
          "female", false,
          "age", 30,
          "attributes", PropertyList["martial", 12],
          "trait", "brilliant_strategist",
        ],
        "new_character", PropertyList["spawn_unit", PropertyList[
          "province", "FROM",
          "home", "FROM",
          "troops", PropertyList["light_cavalry", [3000, 3000]],
        ]],
        "create_character", PropertyList[
          "random_traits", true,
          "dynasty", "random",
          "religion", "catholic",
          "culture", "brazilian",
          "female", false,
          "age", 25,
          "attributes", PropertyList["martial", 12],
          "trait", "brilliant_strategist",
        ],
        "new_character", PropertyList["spawn_unit", PropertyList[
          "province", "FROM",
          "home", "FROM",
          "troops", PropertyList["light_cavalry", [3000, 3000]],
        ]],
        "create_character", PropertyList[
          "random_traits", true,
          "dynasty", "random",
          "religion", "catholic",
          "culture", "brazilian",
          "female", false,
          "age", 22,
          "attributes", PropertyList["martial", 12],
          "trait", "brilliant_strategist",
        ],
        "new_character", PropertyList["spawn_unit", PropertyList[
          "province", "FROM",
          "home", "FROM",
          "troops", PropertyList["light_cavalry", [3000, 3000]],
        ]],
      ],
      "random", PropertyList[
        "chance", 50,
        "create_character", PropertyList[
          "random_traits", true,
          "dynasty", "random",
          "religion", "catholic",
          "culture", "brazilian",
          "female", false,
          "age", 30,
          "attributes", PropertyList["martial", 12],
          "trait", "brilliant_strategist",
        ],
        "new_character", PropertyList["spawn_unit", PropertyList[
          "province", "FROM",
          "home", "FROM",
          "troops", PropertyList["light_cavalry", [3000, 3000]],
        ]],
        "create_character", PropertyList[
          "random_traits", true,
          "dynasty", "random",
          "religion", "catholic",
          "culture", "brazilian",
          "female", false,
          "age", 25,
          "attributes", PropertyList["martial", 12],
          "trait", "brilliant_strategist",
        ],
        "new_character", PropertyList["spawn_unit", PropertyList[
          "province", "FROM",
          "home", "FROM",
          "troops", PropertyList["light_cavalry", [3000, 3000]],
        ]],
        "create_character", PropertyList[
          "random_traits", true,
          "dynasty", "random",
          "religion", "catholic",
          "culture", "brazilian",
          "female", false,
          "age", 22,
          "attributes", PropertyList["martial", 12],
          "trait", "brilliant_strategist",
        ],
        "new_character", PropertyList["spawn_unit", PropertyList[
          "province", "FROM",
          "home", "FROM",
          "troops", PropertyList["light_cavalry", [3000, 3000]],
        ]],
      ],
      "random", PropertyList[
        "chance", 50,
        "create_character", PropertyList[
          "random_traits", true,
          "dynasty", "random",
          "religion", "catholic",
          "culture", "brazilian",
          "female", false,
          "age", 30,
          "attributes", PropertyList["martial", 12],
          "trait", "brilliant_strategist",
        ],
        "new_character", PropertyList["spawn_unit", PropertyList[
          "province", "FROM",
          "home", "FROM",
          "troops", PropertyList["light_cavalry", [3000, 3000]],
        ]],
        "create_character", PropertyList[
          "random_traits", true,
          "dynasty", "random",
          "religion", "catholic",
          "culture", "brazilian",
          "female", false,
          "age", 25,
          "attributes", PropertyList["martial", 12],
          "trait", "brilliant_strategist",
        ],
        "new_character", PropertyList["spawn_unit", PropertyList[
          "province", "FROM",
          "home", "FROM",
          "troops", PropertyList["light_cavalry", [3000, 3000]],
        ]],
        "create_character", PropertyList[
          "random_traits", true,
          "dynasty", "random",
          "religion", "catholic",
          "culture", "brazilian",
          "female", false,
          "age", 22,
          "attributes", PropertyList["martial", 12],
          "trait", "brilliant_strategist",
        ],
        "new_character", PropertyList["spawn_unit", PropertyList[
          "province", "FROM",
          "home", "FROM",
          "troops", PropertyList["light_cavalry", [3000, 3000]],
        ]],
      ],
      "if", PropertyList[
        "limit", PropertyList["FROM", PropertyList["OR", PropertyList[
          "province_id", 1,
          "province_id", 9,
          "province_id", 35,
          "province_id", 31,
        ]]],
        "FROM", PropertyList["sea_zone", PropertyList["ROOT", PropertyList["spawn_unit", PropertyList[
          "province", "PREV",
          "home", "FROM",
          "owner", "ROOT",
          "earmark", "brazilian_invasion_fleet",
          "troops", PropertyList["galleys", [1000, 1000]],
        ]]]],
      ],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 16,
      ],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 18,
      ],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 18,
      ],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 20,
      ],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 25,
      ],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 26,
      ],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 28,
      ],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 16,
      ],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 17,
      ],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 18,
      ],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 16,
      ],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", true,
        "age", 16,
      ],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", true,
        "age", 17,
      ],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", true,
        "age", 18,
      ],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", true,
        "age", 18,
      ],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", true,
        "age", 20,
      ],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", true,
        "age", 16,
      ],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", true,
        "age", 16,
      ],
    ],
    "option", PropertyList["name", "EVTOPTA_BRAZIL_004"],
  ],
  "province_event", PropertyList[
    "id", "BRAZIL.5",
    "desc", "EVTDESC_BRAZIL_005",
    "picture", "GFX_evt_aztec_arrival",
    "border", "GFX_event_normal_frame_war",
    "trigger", PropertyList[
      "year", 1250,
      "has_global_flag", "brazilian_arrival",
      "NOT", PropertyList["has_global_flag", "brazilian_arrival_2"],
      "OR", PropertyList[
        "province_id", 1,
        "province_id", 9,
        "province_id", 35,
        "province_id", 31,
        "province_id", 104,
        "province_id", 149,
        "province_id", 156,
        "province_id", 162,
        "province_id", 841,
        "province_id", 845,
      ],
      "owner", PropertyList["NOT", PropertyList["religion", "catholic"]],
    ],
    "immediate", PropertyList[
      "set_global_flag", "brazilian_arrival_2",
      "set_province_flag", "brazilian_second_wave",
      "e_brazil", PropertyList["holder_scope", PropertyList["narrative_event", PropertyList["id", "BRAZIL.6"]]],
    ],
    "mean_time_to_happen", PropertyList["months", 24],
    "option", PropertyList["name", "EVTOPTA_BRAZIL_005"],
  ],
  "narrative_event", PropertyList[
    "id", "BRAZIL.6",
    "title", "EVTNAME_BRAZIL_006",
    "desc", "EVTDESC_BRAZIL_006",
    "major", true,
    "hide_new", true,
    "picture", "GFX_evt_aztec_arrival",
    "border", "GFX_event_narrative_frame_war",
    "is_triggered_only", true,
    "major_trigger", PropertyList["FROM", PropertyList["owner", PropertyList["NOT", PropertyList["character", "PREVPREV"]]]],
    "immediate", PropertyList[
      "FROM", PropertyList["kingdom", PropertyList["ROOT", PropertyList["war", PropertyList[
        "casus_belli", "tribal_invasion",
        "target", "PREVPREV",
        "thirdparty_title", "PREV",
      ]]]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 30,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 25,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 22,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 30,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 25,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 22,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 30,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 25,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 22,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 30,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 25,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "create_character", PropertyList[
        "random_traits", true,
        "dynasty", "random",
        "religion", "catholic",
        "culture", "brazilian",
        "female", false,
        "age", 22,
        "attributes", PropertyList["martial", 12],
        "trait", "brilliant_strategist",
      ],
      "new_character", PropertyList["spawn_unit", PropertyList[
        "province", "FROM",
        "home", "FROM",
        "troops", PropertyList["light_cavalry", [3000, 3000]],
      ]],
      "random", PropertyList[
        "chance", 50,
        "create_character", PropertyList[
          "random_traits", true,
          "dynasty", "random",
          "religion", "catholic",
          "culture", "brazilian",
          "female", false,
          "age", 30,
          "attributes", PropertyList["martial", 12],
          "trait", "brilliant_strategist",
        ],
        "new_character", PropertyList["spawn_unit", PropertyList[
          "province", "FROM",
          "home", "FROM",
          "troops", PropertyList["light_cavalry", [3000, 3000]],
        ]],
        "create_character", PropertyList[
          "random_traits", true,
          "dynasty", "random",
          "religion", "catholic",
          "culture", "brazilian",
          "female", false,
          "age", 25,
          "attributes", PropertyList["martial", 12],
          "trait", "brilliant_strategist",
        ],
        "new_character", PropertyList["spawn_unit", PropertyList[
          "province", "FROM",
          "home", "FROM",
          "troops", PropertyList["light_cavalry", [3000, 3000]],
        ]],
        "create_character", PropertyList[
          "random_traits", true,
          "dynasty", "random",
          "religion", "catholic",
          "culture", "brazilian",
          "female", false,
          "age", 22,
          "attributes", PropertyList["martial", 12],
          "trait", "brilliant_strategist",
        ],
        "new_character", PropertyList["spawn_unit", PropertyList[
          "province", "FROM",
          "home", "FROM",
          "troops", PropertyList["light_cavalry", [3000, 3000]],
        ]],
      ],
      "random", PropertyList[
        "chance", 50,
        "create_character", PropertyList[
          "random_traits", true,
          "dynasty", "random",
          "religion", "catholic",
          "culture", "brazilian",
          "female", false,
          "age", 30,
          "attributes", PropertyList["martial", 12],
          "trait", "brilliant_strategist",
        ],
        "new_character", PropertyList["spawn_unit", PropertyList[
          "province", "FROM",
          "home", "FROM",
          "troops", PropertyList["light_cavalry", [3000, 3000]],
        ]],
        "create_character", PropertyList[
          "random_traits", true,
          "dynasty", "random",
          "religion", "catholic",
          "culture", "brazilian",
          "female", false,
          "age", 25,
          "attributes", PropertyList["martial", 12],
          "trait", "brilliant_strategist",
        ],
        "new_character", PropertyList["spawn_unit", PropertyList[
          "province", "FROM",
          "home", "FROM",
          "troops", PropertyList["light_cavalry", [3000, 3000]],
        ]],
        "create_character", PropertyList[
          "random_traits", true,
          "dynasty", "random",
          "religion", "catholic",
          "culture", "brazilian",
          "female", false,
          "age", 22,
          "attributes", PropertyList["martial", 12],
          "trait", "brilliant_strategist",
        ],
        "new_character", PropertyList["spawn_unit", PropertyList[
          "province", "FROM",
          "home", "FROM",
          "troops", PropertyList["light_cavalry", [3000, 3000]],
        ]],
      ],
      "random", PropertyList[
        "chance", 50,
        "create_character", PropertyList[
          "random_traits", true,
          "dynasty", "random",
          "religion", "catholic",
          "culture", "brazilian",
          "female", false,
          "age", 30,
          "attributes", PropertyList["martial", 12],
          "trait", "brilliant_strategist",
        ],
        "new_character", PropertyList["spawn_unit", PropertyList[
          "province", "FROM",
          "home", "FROM",
          "troops", PropertyList["light_cavalry", [3000, 3000]],
        ]],
        "create_character", PropertyList[
          "random_traits", true,
          "dynasty", "random",
          "religion", "catholic",
          "culture", "brazilian",
          "female", false,
          "age", 25,
          "attributes", PropertyList["martial", 12],
          "trait", "brilliant_strategist",
        ],
        "new_character", PropertyList["spawn_unit", PropertyList[
          "province", "FROM",
          "home", "FROM",
          "troops", PropertyList["light_cavalry", [3000, 3000]],
        ]],
        "create_character", PropertyList[
          "random_traits", true,
          "dynasty", "random",
          "religion", "catholic",
          "culture", "brazilian",
          "female", false,
          "age", 22,
          "attributes", PropertyList["martial", 12],
          "trait", "brilliant_strategist",
        ],
        "new_character", PropertyList["spawn_unit", PropertyList[
          "province", "FROM",
          "home", "FROM",
          "troops", PropertyList["light_cavalry", [3000, 3000]],
        ]],
      ],
      "if", PropertyList[
        "limit", PropertyList["FROM", PropertyList["OR", PropertyList[
          "province_id", 1,
          "province_id", 9,
          "province_id", 35,
          "province_id", 31,
        ]]],
        "FROM", PropertyList["sea_zone", PropertyList["ROOT", PropertyList["spawn_unit", PropertyList[
          "province", "PREV",
          "home", "FROM",
          "owner", "ROOT",
          "earmark", "brazilian_invasion_fleet",
          "troops", PropertyList["galleys", [1000, 1000]],
        ]]]],
      ],
    ],
    "option", PropertyList["name", "EVTOPTA_BRAZIL_006"],
  ],
  "character_event", PropertyList[
    "id", "BRAZIL.100",
    "hide_window", true,
    "trigger", PropertyList[
      "has_landed_title", "e_brazil",
      "NOT", PropertyList["has_global_flag", "brazilian_invasion_fleet_disbanded"],
      "had_global_flag", PropertyList[
        "flag", "brazilian_arrival",
        "days", 18250,
      ],
    ],
    "mean_time_to_happen", PropertyList["months", 1],
    "immediate", PropertyList[
      "disband_event_forces", "brazilian_invasion_fleet",
      "set_global_flag", "brazilian_invasion_fleet_disbanded",
    ],
    "option", PropertyList["name", "OK"],
  ],
  "narrative_event", PropertyList[
    "id", "BRAZIL.105",
    "title", "EVTNAME_BRAZIL_105",
    "desc", "EVTDESC_BRAZIL_105",
    "picture", "GFX_evt_aztec_arrival",
    "border", "GFX_event_narrative_frame_war",
    "major", true,
    "trigger", PropertyList[
      "has_global_flag", "brazilian_arrival_2",
      "NOT", PropertyList["has_global_flag", "brazilians_defeated"],
      "has_landed_title", "e_brazil",
      "has_regiments", false,
      "is_landed", false,
    ],
    "major_trigger", PropertyList["ai", false],
    "mean_time_to_happen", PropertyList["days", 1],
    "immediate", PropertyList[
      "activate_title", PropertyList[
        "title", "e_brazil",
        "status", false,
      ],
      "set_global_flag", "brazilians_defeated",
    ],
    "option", PropertyList["name", "EVTOPTA_BRAZIL_105"],
  ],
]
