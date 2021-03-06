require_relative "base"

class ExtraFormableCountriesGameModification < EU4GameModification
  def each_country_primary_culture
    glob("common/cultures/*.txt").each do |path|
      parse(path).each do |group_name, group|
        group = group.to_h
        group.delete "graphical_culture"
        group.delete "dynasty_names"
        group.each do |culture_name, details|
          next if details.is_a?(Array)
          details = details.to_h
          next unless details["primary"]
          yield culture_name, details["primary"]
        end
      end
    end
  end

  def apply!
    already_formable = %W[
      ALG ARB BRZ BUK BYZ CAM CAN CHL COL EGY ENG FRA GBR GER GRE HAB HAN
      HAT HIN HLR INC IRE ITA JAP KOJ KUR LAP LOU MCH MEX MOR MSA MUG NED
      PER PEU PLC PRG PRU QNG QUE RMN RUS SCA SPA SPI TIB TRP TUN UKR USA
      VNZ WES
      AUS CRO MAY POL SOK SST
    ]
    cant_by_formed_by = %W[HLR PAP HIN MUG SPA FRA GER BYZ BUK ITA RUS SCA PER GBR PLC EGY VIJ INC]

    decisions = []
    each_country_primary_culture do |culture, tag|
      next if already_formable.include?(tag)
      next if tag == "MOS" # Form Russia instead

      decisions << "country_decisions"
      decisions << PropertyList[
        "extra_formable_form_#{tag}", PropertyList[
          "major", true,
          "potential", PropertyList[
            Property::NOT["has_global_flag", "fun_and_balance_config.disable_extra_formable_countries"],
            Property::NOT["exists", tag],
            *cant_by_formed_by.map{|ct| Property::NOT["tag", ct] },
            "primary_culture", culture,
          ],
          "allow", PropertyList[
            "adm_tech", 10,
            "num_of_cities", 3,
            "is_subject", false,
            "is_at_war", false,
            "is_tribal", false,
            Property::NOT["any_province", PropertyList[
              "culture", culture,
              Property::NOT["owned_by", "ROOT"],
              Property::NOT["is_core", "ROOT"],
            ]],
          ],
          "effect", PropertyList[
            "change_tag", tag,
            "add_country_modifier", PropertyList[
              "name", "centralization_modifier",
              "duration", 7300,
            ],
            "add_prestige", 25,
            "swap_free_idea_group", true,
          ],
          "ai_will_do", PropertyList["factor", 1],
        ],
      ]

      loc_tag = localization(tag)
      loc_culture = localization(culture)
      localization! "extra_formable_countries",
        "extra_formable_form_#{tag}_title" => "Form #{loc_tag}",
        "extra_formable_form_#{tag}_desc"  => "Our country is one true home of #{loc_culture} people, let's call it #{loc_tag}!"
    end
    create_mod_file! "decisions/extra_formable_countries.txt", PropertyList[
      *decisions
    ]
  end
end
