require_relative "fun_and_balance_common"

class FunAndBalanceGameModification < FunAndBalanceCommonGameModification
  def apply!
    patch_defines_lua!([
      ["SCALED_TRUCE_YEARS", 10, 0],
      ["ANNEX_DIP_COST_PER_DEVELOPMENT", 8, 1],
      ["INTEGRATE_VASSAL_MIN_YEARS", 10, 20],
      ["POLICY_COST", 1, 0],
      ["FOREIGN_REBEL_SUPPORT", 4, 6],
      ["WESTERN_POWER_TICK_REDUCTION_FACTOR", 100, 1000000],
      ["ADVISOR_COST_INCREASE_PER_YEAR", 0.005,  0.005], # Vanilla is now following F&B
      ["CULTURE_GAIN_THRESHOLD", "0.20", "0.10"],
      ["POWER_MAX", 999, 1500],
      ["PS_MOVE_CAPITAL", 200, 100],
      ["PS_MOVE_TRADE_PORT", 200, 100],
      ["PS_CHANGE_CULTURE", 10, 5],
      ["CORE_LOSE", 50, 100],
      ["CORE_LOSE_CULTURE_GROUP", 150, 300],
      ["PROTECTORATE_TECH_THRESHOLD", 0.5, 5.0],
      ["PROTECTORATE_LOWER_BOUND", 0.5, 5.0],
      ["VASSALIZE_BASE_DEVELOPMENT_CAP", 100, 10000],
      ["PEACE_TIME_EARLY_FACTOR", 0.75, 0.50],
      ["PEACE_WAR_EXHAUSTION_FACTOR", 1.0, 2.0],
      ["TECH_AHEAD_OF_TIME", 0.1, 0.05],
      ["MONTHS_BEFORE_TOTAL_OCCUPATION", 60, 24],
      ["AUTONOMY_AT_DIPLO_ANNEX", 60, 50], # Not a huge difference
      ["RANDOM_LUCKY_DEVELOPMENT_WEIGHT", 0.4, 0],
      ["RANDOM_LUCKY_TECH_WEIGHT", 1, 0],
      ["RANDOM_LUCKY_SLOW_TECH_PENALTY", 0.33, 1],
      ["DIPLOMATIC_INTEREST_DISTANCE", 150, 250],
      ["MAX_DISTANCE_TO_OWNER_AREA", 200, 1000],
      ["RULER_BASE_SKILL", 2, 3],
      ["IDEAS_MAX_LEVEL", 4, 10],
      ["IDEAS_PERCENTAGE_LIMIT", 50, 100],
      ["MAX_IDEA_GROUPS_FROM_SAME_CATEGORY", 0.5, 1.0],
      ["OVERSEAS_DISTANCE", 150, 400],
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