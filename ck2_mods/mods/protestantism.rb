class ProtestantismGameModification < CK2GameModification
  def add_holy_sites!(sites)
    found = Set[]
    add_sites = proc do |node|
      node.each do |k,v|
        if sites[k]
          found << k
          # This is nasty but produces better looking output that add!
          v.instance_eval do
            idx = @list.index{|a,| a == "color2" } or raise
            @list[idx+1,0] = sites[k].map{|rel| ["holy_site", rel] }
          end
        elsif v.is_a?(PropertyList) and k =~ /\A[dke]/
          add_sites[v]
        end
      end
    end
    patch_mod_file!("common/landed_titles/landed_titles.txt") do |node|
      add_sites[node]
    end
    raise unless found == Set[*sites.keys]
  end

  def setup_protestantism!
    # %W[religion_icon_strip.dds religion_icon_strip_small.dds religion_icon_strip_big.dds].each do |name|
    #   create_file! "gfx/interface/#{name}", open("data/modern_times/#{name}", "rb", &:read)
    # end
    # generalstuff = ParadoxModFile.new(path: "data/vanilla/generalstuff.gfx").parse!
    # generalstuff["spriteTypes"].find_all("spriteType").each do |data|
    #   next unless data["name"] =~ /\AGFX_religion_icon_strip/
    #   raise unless data["noOfFrames"] = 52
    #   data["noOfFrames"] = 54
    # end
    # create_mod_file! "interface/generalstuff.gfx", generalstuff

    create_mod_file! "history/titles/d_protestant.txt", PropertyList[
      Date.parse("0020.1.1"), PropertyList["active", false],
    ]
    create_file! "common/landed_titles/modern_times.txt",
    'd_protestant = {
      color={ 180 137 97 }
      color2={ 220 220 0 }
      capital = 333 # Rome
      title = "PROTESTANT_PRIMATE"
      foa = "POPE_FOA"
      short_name = yes
      # Always exists
      landless = yes
      # Controls a religion
      controls_religion = protestant
      religion = protestant
      # Cannot be held as a secondary title
      primary = yes
      dynasty_title_names = no # Will not be named "Seljuk", etc.
    }'
    create_mod_file! "common/religions/01_modern_times.txt", PropertyList[
      "christian", PropertyList[
        "protestant", PropertyList[
          "graphical_culture", "westerngfx",
          "icon", 1,
          "heresy_icon", 6,
          "color", [0.7, 0.7, 0.8],
          "parent", "catholic",
          "crusade_name", "CRUSADE",
          "scripture_name", "THE_BIBLE",
          "priest_title", "PRIEST",
          "high_god_name", "GOD_GOD",
          "god_names", ["GOD_GOD", "GOD_THE_LORD", "GOD_JESUS", "GOD_THE_BLESSED_VIRGIN"],
          "evil_god_names", ["SATAN", "LUCIFER", "THE_DEVIL"],
          "autocephaly", true,
          "can_call_crusade", false,
          "can_grant_divorce", true,
          "priests_can_inherit", false,
          "priests_can_marry", true,
          "religious_clothing_head", 0,
          "religious_clothing_priest", 1,
        ],
        "reformed", PropertyList[
          "graphical_culture", "westerngfx",
          "icon", 1,
          "heresy_icon", 6,
          "color", [0.4, 0.4, 0.6],
          "parent", "catholic",
          "crusade_name", "CRUSADE",
          "scripture_name", "THE_BIBLE",
          "priest_title", "PRIEST",
          "high_god_name", "GOD_GOD",
          "god_names", ["GOD_GOD", "GOD_THE_LORD", "GOD_JESUS", "GOD_THE_BLESSED_VIRGIN"],
          "evil_god_names", ["SATAN", "LUCIFER", "THE_DEVIL"],
          # Protestant Work Ethic
          "character_modifier", PropertyList["stewardship", 4],
          "priests_can_inherit", false,
          "priests_can_marry", true,
          "religious_clothing_head", 0,
          "religious_clothing_priest", 1,
        ],
      ],
    ]
    localization! "modern_times_religions",
      "protestant" => "Protestant",
      "protestant_DESC" => "Lutheran/Anglican branch of Protestantism",
      "d_protestant" => "Ecumenical Primacy",
      "d_protestant_adj" => "Primatial",
      "PROTESTANT_PRIMATE" => "Ecumenical Primate",
      "reformed" => "Reformed",
      "reformed_DESC" => "Reformed/Calvinist branch of Protestantism"

    add_holy_sites!(
      "c_kent"      => ["protestant", "reformed"],
      "c_roma"      => ["protestant", "reformed"],
      "c_koln"      => ["protestant", "reformed"],
      "c_jerusalem" => ["protestant", "reformed"],
      "c_santiago"  => ["protestant", "reformed"],
    )
  end

  def setup_peace_of_westphalia_cbs!
    patch_mod_file!("common/cb_types/00_cb_types.txt") do |node|
      ["religious", "crusade"].each do |cb_name|
        node[cb_name]["can_use"].add! "OR", PropertyList[
          "has_global_flag", "end_of_peace_of_westphalia",
          "FROM", PropertyList[
            "NOT", PropertyList["religion", "catholic"],
            "NOT", PropertyList["religion", "protestant"],
            "NOT", PropertyList["religion", "reformed"],
          ],
          "ROOT", PropertyList[
            "NOT", PropertyList["religion", "catholic"],
            "NOT", PropertyList["religion", "protestant"],
            "NOT", PropertyList["religion", "reformed"],
          ],
        ]
      end
    end
  end

  def setup_peace_of_westphalia!
    decisions = []
    decisions << Property[
      "end_peace_of_westphalia", PropertyList[
        "is_high_prio", true,
        "potential", PropertyList[
          "OR", PropertyList[
            "religion", "catholic",
            "religion", "protestant",
            "religion", "reformed",
          ],
          "NOT", PropertyList["has_global_flag", "end_of_peace_of_westphalia"],
        ],
        "allow", PropertyList[
          "independent", true,
          "religion_authority", 1.0,
          "prestige", 8000,
        ],
        "effect", PropertyList[
          "set_global_flag", "end_peace_of_westphalia",
        ],
        "revoke_allowed", PropertyList["always", false],
        "ai_will_do", PropertyList["factor", 1],
      ],
    ]
    # decisions << Property[
    #   "end_peace_of_westphalia_debug", PropertyList[
    #     "is_high_prio", true,
    #     "allow", PropertyList[
    #       "ai", false,
    #       "NOT", PropertyList["has_global_flag", "end_of_peace_of_westphalia"],
    #     ],
    #     "effect", PropertyList[
    #       "set_global_flag", "end_of_peace_of_westphalia",
    #     ],
    #     "revoke_allowed", PropertyList["always", false],
    #     "ai_will_do", PropertyList["factor", 1],
    #   ],
    # ]
    # decisions << Property[
    #   "resume_peace_of_westphalia_debug", PropertyList[
    #     "is_high_prio", true,
    #     "allow", PropertyList[
    #       "ai", false,
    #       "has_global_flag", "end_of_peace_of_westphalia",
    #     ],
    #     "effect", PropertyList[
    #       "clr_global_flag", "end_of_peace_of_westphalia",
    #     ],
    #     "revoke_allowed", PropertyList["always", false],
    #     "ai_will_do", PropertyList["factor", 1],
    #   ],
    # ]
    create_mod_file! "decisions/peace_of_westphalia.txt", PropertyList[
      "decisions", PropertyList[*decisions],
    ]
    localization! "modern_times_peace_of_westphalia",
      "end_peace_of_westphalia" => "Renounce Peace of Westphalia",
      "end_peace_of_westphalia_desc" => "Uneasy truce between Catholic, Protestant, and Reformed branches of Christianity held since 1648. It is time to renounce it and unite Western Christianity!"
  end

  def apply!
    setup_protestantism!
    setup_peace_of_westphalia_cbs!
    setup_peace_of_westphalia!
  end
end
