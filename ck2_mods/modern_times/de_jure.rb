ModernTimesDatabase::DE_JURE = {
  "k_venice"         => "e_italy",
  "k_sicily"         => "e_italy",
  "d_aragon"         => "k_aragon",
  "d_granada"        => "k_castille",
  "d_brandenburg"    => "k_pomerania",
  "k_ruthenia"       => "e_wendish_empire",
  "k_croatia"        => "e_carpathia",
  "d_ryazan"         => "k_rus",
  "d_livonia"        => "k_lithuania",
  "d_iceland"        => "k_denmark",
  "d_nikaea"         => "k_anatolia",
  "d_provence"       => "k_aquitaine",
  "d_dauphine"       => "k_aquitaine",
  "d_verona"         => "k_venice",
  "k_anatolia"       => "e_arabia",
  "k_armenia"        => "e_arabia",
  "k_georgia"        => "e_persia",
  "d_sarkel"         => "k_alania",
  "k_volga_bulgaria" => "e_russia",
  "k_sindh"          => "e_india",
  "k_punjab"         => "e_india",
  "k_delhi"          => "e_india",
  "k_gujarat"        => "e_india",
  "k_rajputana"      => "e_india",
  "k_malwa"          => "e_india",
  "k_kosala"         => "e_india",
  "k_gondwana"       => "e_india",
  "k_bengal"         => "e_india",
  "k_kamarupa"       => "e_india",
  "k_orissa"         => "e_india",
  "k_bihar"          => "e_india",
  "k_maharastra"     => "e_india",
  "k_karnata"        => "e_india",
  "k_tamilakam"      => "e_india",
  "k_andhra"         => "e_india",
  "k_telingana"      => "e_india",
  "k_lanka"          => "e_india",

  "k_belarus"        => "e_wendish_empire",
  "d_vitebsk"        => "k_belarus",
  "d_smolensk"       => "k_belarus",
  "d_yatviags"       => "k_belarus",
  "d_polotsk"        => "k_belarus",

  # 2 Sicilies as de jure in 2.5 feels just wrong, reverting to 2.4 system
  "d_apulia"         => "k_sicily",
  "d_benevento"      => "k_sicily",
  "d_calabria"       => "k_sicily",
  "d_capua"          => "k_sicily",
  "d_salerno"        => "k_sicily",
  "d_sicily"         => "k_sicily",

  # This region has 3 situations:
  # - HRE (Prussia under Poland)
  # - Germany Empire (Prussia under Germany, loses Gdansk to Poland)
  # - after WW1 (Prussia becomes East Germany, moves West)

  # While HRE exists Prussia is de jure vassal of Commonwealth
  # After it falls apart it becomes part of empire of Germany - without Gdanks
  # After WW2 it becomes East Germany
  "d_prussia"        => { times_immemorial: "k_pomerania", end_ww2: "k_poland" },
  "d_pomeralia"      => { hre_disbanded: "k_poland" },
  "k_pomerania"      => { hre_disbanded: "e_germany" },
  "k_frisia"         => { hre_disbanded: "e_germany" },
  "k_germany"        => { hre_disbanded: "e_germany" },
  "k_lotharingia"    => { hre_disbanded: "e_germany" },
  "k_bavaria"        => { hre_disbanded: "e_carpathia" },
  "k_bohemia"        => { hre_disbanded: "e_carpathia" },
  "d_saxony"         => { end_ww2: "k_pomerania" },
  "d_meissen"        => { end_ww2: "k_pomerania" },

  # Lotharingia divided, after WW2 France gets most of it
  "d_luxembourg"     => "k_frisia",
  "d_upper_lorraine" => "k_france",
  "d_lower_lorraine" => {times_immemorial: "k_germany", end_ww2: "k_france"}, # This shape...
  "d_alsace"         => {times_immemorial: "k_germany", end_ww2: "k_france"},
}
