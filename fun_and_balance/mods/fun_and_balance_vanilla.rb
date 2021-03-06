require_relative "fun_and_balance_common"

class FunAndBalanceGameModification < FunAndBalanceCommonGameModification
  def apply!
    patch_file!("common/opinion_modifiers/00_opinion_modifiers.txt", force_create: true) do |content|
      content.sub("they_force_vassalized_us = [", "they_force_vassalized_us = {")
    end
    patch_file!("missions/Anti_Rival_Missions.txt") do |content|
      content.sub("FROM {", "FROM = {")
    end

    soft_patch_defines_lua!([
      ["NAI.DIPLOMATIC_INTEREST_DISTANCE", 150, 250],
      ["NAI.PEACE_TIME_EARLY_FACTOR", 0.75, 0.50],
      ["NAI.PEACE_WAR_EXHAUSTION_FACTOR", 1.0, 2.0],
      ["NCountry.ADVISOR_COST_INCREASE_PER_YEAR", 0.005,  0.005], # Vanilla is now following F&B
      ["NCountry.CORE_LOSE", 50, 100],
      ["NCountry.CORE_LOSE_CULTURE_GROUP", 150, 300],
      ["NCountry.CULTURE_GAIN_THRESHOLD", "0.20", "0.10"],
      ["NCountry.MAX_IDEA_GROUPS_FROM_SAME_CATEGORY", 0.5, 1.0],
      ["NCountry.OVERSEAS_DISTANCE", 150, 400],
      ["NCountry.POLICY_COST", 1, 0],
      ["NCountry.POWER_MAX", 999, 1500],
      ["NCountry.PROTECTORATE_LOWER_BOUND", 0.5, 5.0],
      ["NCountry.PROTECTORATE_TECH_THRESHOLD", 0.5, 5.0],
      ["NCountry.PS_CHANGE_CULTURE", 10, 5],
      ["NCountry.PS_MOVE_CAPITAL", 200, 100],
      ["NCountry.PS_MOVE_TRADE_PORT", 200, 100],
      ["NCountry.RANDOM_LUCKY_DEVELOPMENT_WEIGHT", 0.4, 0],
      ["NCountry.RANDOM_LUCKY_SLOW_TECH_PENALTY", 0.33, 1],
      ["NCountry.RANDOM_LUCKY_TECH_WEIGHT", 1, 0],
      ["NCountry.TECH_AHEAD_OF_TIME", 0.1, 0.05],
      ["NCountry.WESTERN_POWER_TICK_REDUCTION_FACTOR", 100, 1000000],
      ["NDiplomacy.ANNEX_DIP_COST_PER_DEVELOPMENT", 8, 1],
      ["NDiplomacy.INTEGRATE_VASSAL_MIN_YEARS", 10, 20],
      ["NDiplomacy.MONTHS_BEFORE_TOTAL_OCCUPATION", 60, 24],
      ["NDiplomacy.SCALED_TRUCE_YEARS", 10, 0],
      ["NDiplomacy.VASSALIZE_BASE_DEVELOPMENT_CAP", 100, 10000],
      ["NEconomy.AUTONOMY_AT_DIPLO_ANNEX", 60, 50], # Not a huge difference
      ["NNationDesigner.IDEAS_MAX_LEVEL", 4, 10],
      ["NNationDesigner.IDEAS_PERCENTAGE_LIMIT", 50, 100],
      ["NNationDesigner.MAX_DISTANCE_TO_OWNER_AREA", 400, 1000],
      ["NNationDesigner.RULER_BASE_SKILL", 2, 3],
    ])

    patch_mod_file!("common/static_modifiers/00_static_modifiers.txt") do |node|
      node["war"] = PropertyList[] if node["war"] == []
      modify_node! node,
        ["base_values", "global_missionary_strength", 0.02, 0.01],
        ["base_values", "global_heretic_missionary_strength", nil, 0.01],
        ["base_values", "diplomatic_upkeep", 4, 8],
        ["war", "war_exhaustion_cost", nil, 100],
        ["emperor", "diplomatic_upkeep", 1, 2],
        ["war_exhaustion", "defensiveness", nil, -0.02],
        ["war_exhaustion", "land_morale", nil, -0.02],
        ["war_exhaustion", "naval_morale", nil, -0.02],
        ["num_of_marriages", "heir_chance", 0.05, 0.03]
    end

    anyone_can_form_byzantium!
    double_diplo_rel_limit_from_ideas!
    fix_opinions!
    fix_wargoals!
    no_naval_attrition!
    patch_religion!
    reduce_religious_center_penalty!
    disable_burgundy_inheritance!
    move_burgundy_capital_to_hre!
    reverse_horde_nerfs!
    smooth_oe_scaling!
    power_projection_tweaks!

    # Redistribute adm/dev efficiency
    patch_mod_file!("common/technologies/adm.txt") do |node|
      techs = [PropertyList[]] + node.find_all("technology")
      techs.each do |tech|
        tech.delete "development_efficiency"    # 25, 29, with 0.25 each
        tech.delete "administrative_efficiency" # 24, 28, with 0.25 each
      end
      [9, 14, 19, 24, 29].each do |level|
        techs[level].add! "development_efficiency", 0.1
      end
      [8, 13, 18, 23, 28].each do |level|
        techs[level].add! "administrative_efficiency", 0.1
      end
    end
  end
end
