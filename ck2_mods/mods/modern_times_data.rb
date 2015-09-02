module ModernTimes
  # Easy dates
  DATES = {
    start: "1900.1.1",
    end_of_times: "9999.12.31", # Just for some calculations, not used in the mod itself
    ireland_independence: "1921.12.6",
    cyprus_independence: "1960.10.1",
    malta_independence: "1964.9.21",
    sri_lanka_independence: "1948.2.4",
    maldives_independence: "1965.7.26",
    india_independence: "1947.8.15",
    bangladesh_independence: "1971.12.16",
    goa_annexation: "1961.12.19",
    iceland_independence: "1944.6.17",
    norway_independence: "1905.6.7",
    finland_independence: "1917.12.6",
    czechoslovakia_independence: "1918.10.28",
    czechoslovakia_dissolution: "1993.1.1",
    south_tirol_annexation: "1920.10.10",
    anschluss: "1938.3.12",
    north_cyprus_invasion: "1974.8.18",

    algeria_indepnedence: "1962.4.8",
    tunisia_independence: "1956.3.20",
    libya_italian: "1912.10.18", # First Treaty of Lausanne
    libya_independence: "1951.12.24",
    egypt_independence: "1922.2.28",

    jordan_independence: "1946.6.17",
    syria_independence: "1946.4.17",
    lebanon_independence: "1943.11.22",
    israel_independence: "1948.5.14",
    six_day_war: "1967.6.10",
    egypt_israel_peace: "1979.3.26",

    # TODO: models both Balkan Wars properly
    treaty_of_london: "1913.5.30", # First Balkan Wars
    treaty_of_bucharest: "1913.10.10", # Second Balkan Wars

    kuwait_independence: "1961.6.19",
    bahrain_independence: "1971.8.15",
    british_iraq: "1920.4.25",
    iraq_independence: "1932.10.3",

    # There were a lot of peace treaties but it's easier to just do it in one go, at least for now
    end_ww1: "1918.11.11",
    end_ww2: "1945.5.8",
    german_reunification: "1990.9.29",
    silesian_uprising: "1922.5.15", # actually Geneva convension for Upper Silesia

    annexation_latvia: "1940.8.5",
    annexation_lithuania: "1940.8.3",
    annexation_estonia: "1940.8.6",
    annexation_armenia: "1920.12.2",
    annexation_azerbaijan: "1920.5.11",
    annexation_georgia: "1921.3.17",
    fall_soviet_union: "1991.12.26",
    crimea_invasion: "2014.4.17",

    treaty_of_sevres: "1920.8.10",
    treaty_of_ankara: "1921.10.20",
    treaty_of_lausanne: "1923.7.24",

    slovenia_independence: "1991.7.7",
    croatia_independence: "1991.10.8",
    bosnia_independence: "1993.3.3",
    montenegro_independence: "2006.6.3",

    mongolia_independence: "1924.11.26",

    north_yemen_independence: "1918.10.30",
    south_yemen_independence: "1967.11.30",
    yemen_unification: "1990.5.22",
    djibouti_independence: "1977.6.27",
    mali_independence: "1960.6.20",
    mauritania_french: "1903.5.12", # Was under French influence earlier
    mauritania_independence: "1960.11.28",
    sudan_independence: "1956.1.1",

    eritrea_british: "1941.4.1", # Battle of Keren; or I could make it formal at end of WW2
    eritrea_ethiopian: "1950.12.2",
    eritrea_independence: "1993.5.24",
    somalia_independence: "1960.7.1",

    morocco_protectorate: "1912.3.30", # sp/fr
    # north_spanish_morocco_end: "1958.4.1",
    # south_spanish_morocco_end: "1956.4.7",
    # french_morocco_independence: "1956.10.29",

    oman_independence: "1970.7.23", # Not sure this is corrrect date
  }

  TITLES = {
    e_britannia: {
      culture: :english,
      religion: :waldensian,
      capital: :c_middlesex,
      holders: {
        "1837.6.20" => {
          birth: "1819.5.24",
          death: "1901.1.22",
          name: "Victoria",
          female: true,
        },
        "1901.1.22" => {
          birth: "1841.11.9",
          death: "1910.5.6",
          name: "Edward",
        },
        "1910.5.6" => {
          birth: "1865.6.3",
          death: "1936.1.20",
          name: "George",
        },
        "1936.1.20" => {
          birth: "1894.6.23",
          death: "1972.5.28",
          name: "Edward"
        },
        "1936.12.11" => {
          birth: "1895.12.14",
          death: "1952.2.6",
          name: "George",
        },
        "1952.2.6" => {
          birth: "1926.4.21",
          name: "Elizabeth",
          female: true,
        }
      }
    },
    k_ireland: {
      culture: :irish,
      religion: :catholic,
      capital: :c_dublin,
    },
    d_iceland: {
      culture: :norwegian,
      religion: :waldensian,
      capital: :c_vestisland,
    },
    k_portugal: {
      culture: :portuguese,
      religion: :catholic,
      capital: :c_lisboa,
    },
    e_spain: {
      culture: :castillan,
      religion: :catholic,
      capital: :c_toledo,
    },
    e_france: {
      culture: :frankish,
      religion: :catholic,
      capital: :c_ile_de_france,
    },
    k_papacy: {
      culture: :italian,
      religion: :catholic,
      capital: :c_roma,
    },
    e_italy: {
      culture: :italian,
      religion: :catholic,
      capital: :c_orvieto,
    },
    d_cyprus: {
      culture: :greek,
      religion: :orthodox,
      capital: :c_limisol,
    },
    c_malta: {
      culture: :italian, # not really
      religion: :catholic,
      capital: :c_malta,
    },
    k_denmark: {
      culture: :danish,
      religion: :waldensian,
      capital: :c_sjaelland,
    },
    k_sweden: {
      culture: :swedish,
      religion: :waldensian,
      capital: :c_uppland,
    },
    k_norway: {
      culture: :norwegian,
      religion: :waldensian,
      capital: :c_bergenshus,
    },
    c_maldives: {
      culture: :tamil,
      religion: :sunni,
      capital: :c_maldives,
    },
    k_lanka: {
      culture: :sinhala,
      religion: :buddhist,
      capital: :c_dakhina_desa,
    },
    e_india: {
      culture: :hindustani,
      religion: :hindu,
      capital: :c_delhi,
    },
    d_luxembourg: {
      culture: :dutch,
      religion: :catholic,
      capital: :c_luxembourg,
    },
    e_russia: {
      culture: :russian,
      religion: :orthodox,
      capital: :c_moskva,
    },
    d_flanders: {
      culture: :dutch,
      religion: :catholic,
      capital: :c_brabant,
    },
    k_frisia: {
      culture: :dutch,
      religion: :waldensian,
      capital: :c_breda,
    },
    e_carpathia: {
      culture: :german,
      religion: :catholic,
      capital: :c_osterreich,
    },
    e_germany: {
      culture: :german,
      religion: :catholic,
      capital: :c_oberbayern, # temporary
    },
    d_pomeralia: {
      culture: :german,
      religion: :catholic,
      capital: :c_danzig,
    },
    k_saxony: {
      culture: :german,
      religion: :catholic,
      capital: :c_brandenburg,

    },
    k_bohemia: {
      culture: :bohemian,
      religion: :catholic,
      capital: :c_praha,
    },
    d_slovakia: {
      culture: :bohemian,
      religion: :catholic,
      capital: :c_pressburg,
    },
    k_burgundy: {
      culture: :german,
      religion: :catholic,
      capital: :c_bern,
    },
    e_seljuk_turks: {
      culture: :turkish,
      religion: :sunni,
      capital: :c_byzantion,
    },
    # TODO: Ottoman caliphate (or maybe ISIS caliphate even)
    # d_sunni: {
    #   culture: :turkish,
    #   religion: :sunni,
    #   capital: :c_byzantion,
    # },
    d_tunis: {
      culture: :berber,
      religion: :sunni,
      capital: :c_tunis,
    },
    d_tripolitania: {
      culture: :berber,
      religion: :sunni,
      capital: :c_tripolitana,
    },
    d_alger: {
      culture: :berber,
      religion: :sunni,
      capital: :c_al_djazair,
    },
    # d_marrakech:
    #   culture: :berber,
    #   religion: :sunni,
    # },
    d_krete: {
      culture: :greek,
      religion: :orthodox,
    },
    k_byzantium: {
      culture: :greek,
      religion: :orthodox,
      capital: :c_atheniai,
    },
    k_bulgaria: {
      culture: :bulgarian,
      religion: :orthodox,
    },
    k_baluchistan: {
      culture: :sindhi,
      religion: :sunni,
      capital: :c_makran,
    },
    k_afghanistan: {
      culture: :afghan,
      religion: :sunni,
      capital: :c_kabul,
    },
    k_mesopotamia: {
      culture: :bedouin_arabic,
      religion: :shiite,
      capital: :c_baghdad,
    },
    d_basra: {
      culture: :bedouin_arabic,
      religion: :sunni,
    },
    c_bahrein: {
      culture: :bedouin_arabic,
      religion: :sunni,
    },
    e_persia: {
      culture: :persian,
      religion: :shiite,
      capital: :c_esfahan,
    },
    k_bengal: {
      culture: :bengali,
      religion: :sunni,
      capital: :c_bikrampur,
    },
    d_dihistan: {
      culture: :turkish, # ???
      religion: :sunni,
    },
    k_cuman: {
      culture: :turkish, # ???
      religion: :sunni,
    },
    k_khiva: {
      culture: :cuman, # ???
      religion: :sunni,
    },
    k_khotan: {
      culture: :tocharian, # Chinese
      religion: :buddhist,
    },
    d_esthonia: {
      culture: :ugricbaltic,
      religion: :waldensian,
    },
    d_lithuanians: {
      culture: :lithuanian,
      religion: :catholic,
    },
    k_finland: {
      culture: :finnish,
      religion: :waldensian,
      capital: :c_finland,
    },
    d_courland: {
      culture: :lettigallish,
      religion: :waldensian,
      capital: :c_zemigalians,
    },
    k_poland: {
      culture: :polish,
      religion: :catholic,
      capital: :c_plock, # Not Krakow
    },
    d_azerbaijan: {
      culture: :persian, # close enough
      religion: :sunni,
    },
    d_armenia: {
      culture: :armenian,
      religion: :orthodox,
    },
    k_egypt: {
      culture: :egyptian_arabic,
      religion: :sunni,
    },
    k_arabia: {
      culture: :bedouin_arabic,
      religion: :sunni,
    },
    k_hungary: {
      culture: :hungarian,
      religion: :catholic,
    },
    k_georgia: {
      culture: :georgian,
      religion: :orthodox,
    },
    k_ruthenia: {
      culture: :volhynian,
      religion: :orthodox,
    },
    d_minsk: {
      culture: :severian,
      religion: :orthodox,
      capital: :c_minsk,
    },
    k_mongolia: {
      culture: :mongol,
      religion: :sunni,
    },
    d_carinthia: {
      culture: :croatian,
      religion: :catholic,
    },
    k_croatia: {
      culture: :croatian,
      religion: :catholic,
    },
    d_bosnia: {
      culture: :croatian,
      religion: :sunni,
    },
    k_serbia: {
      culture: :serbian,
      religion: :orthodox,
      capital: :c_belgrade,
    },
    k_syria: {
      culture: :levantine_arabic,
      religion: :shiite,
    },
    d_galilee: {
      culture: :levantine_arabic,
      religion: :sunni,
    },
    d_oultrejourdain: {
      culture: :levantine_arabic,
      religion: :sunni,
    },
    k_israel: {
      culture: :ashkenazi,
      religion: :jewish,
      capital: :c_acre,
    },
    d_sanaa: {
      culture: :bedouin_arabic,
      religion: :sunni,
      capital: :c_aden,
    },
    d_arabia_felix: {
      culture: :bedouin_arabic,
      religion: :sunni,
      capital: :c_sanaa,
    },
    d_afar: {
      culture: :somali,
      religion: :sunni,
      capital: :c_tadjoura,
    },
    d_hayya: {
      culture: :nubian,
      religion: :sunni,
      capital: :c_massawa,
    },
    d_harer: {
      culture: :somali,
      religion: :sunni,
    },
    k_abyssinia:  {
      culture: :ethiopian,
      religion: :miaphytise,
    },
    d_songhay: {
      culture: :manden,
      religion: :sunni,
    },
    k_mali: {
      culture: :manden,
      religion: :sunni,
    },
    k_nubia: {
      culture: :nubian,
      religion: :sunni,
    },
    k_dacia: {
      culture: :romanian,
      religion: :orthodox,
      capital: :c_turnu,
    },
    d_oman: {
      culture: :bedouin_arabic,
      religion: :sunni,
    },
    c_dhu_zabi: {
      culture: :bedouin_arabic,
      religion: :sunni,
    },
  }

  LAND = {
    e_britannia:  { start: "e_britannia" },
    k_ireland:    { start: "e_britannia", ireland_independence: "k_ireland" },
    d_ulster:     { start: "e_britannia" },
    c_tyrconnell: { start: "e_britannia", ireland_independence: "k_ireland" },
    c_orkney:     { start: "e_britannia" },
    c_shetland:   { start: "e_britannia" },
    d_iceland:    { start: "k_denmark", iceland_independence: "d_iceland" },
    c_algeciras:  { start: "e_britannia" },
    k_portugal:   { start: "k_portugal" },
    e_spain:      { start: "e_spain" },
    k_france:     { start: "e_france" },
    d_provence:   { start: "e_france" },
    d_dauphine:   { start: "e_france" },
    d_burgundy:   { start: "e_france" },
    k_aquitaine:  { start: "e_france" },
    k_brittany:   { start: "e_france" },
    c_boulogne:   { start: "e_france" },
    c_besancon:   { start: "e_france" },
    c_roma:       { start: "k_papacy" },
    c_corsica:    { start: "e_france" },
    d_cyprus:     { start: "e_britannia", cyprus_independence: "d_cyprus" },
    c_famagusta:  { start: "e_britannia", cyprus_independence: "d_cyprus", north_cyprus_invasion: "e_seljuk_turks" },
    c_malta:      { start: "e_britannia", malta_independence: "c_malta" },
    e_italy:      { start: "e_italy" },
    k_sicily:     { start: "e_italy" },
    k_venice:     { start: "e_italy" },
    c_canarias:   { start: "e_spain" },
    d_sjaelland:  { start: "k_denmark" },
    d_slesvig:    { start: "k_denmark" },
    c_bornholm:   { start: "k_denmark" },
    d_skane:      { start: "k_sweden" },
    c_aland:      { start: "e_russia", finland_independence: "k_finland" },
    d_finland:    { start: "e_russia", finland_independence: "k_finland" },
    c_kemi:       { start: "e_russia", finland_independence: "k_finland" },
    c_savolaks:   { start: "e_russia", finland_independence: "k_finland" },
    c_kexholm:    { start: "e_russia", finland_independence: "k_finland" },
    k_sweden:     { start: "k_sweden" },
    d_jamtland:   { start: "k_sweden" },
    c_faereyar:   { start: "k_sweden", norway_independence: "k_norway" },
    d_ostlandet:  { start: "k_sweden", norway_independence: "k_norway" },
    d_vestlandet: { start: "k_sweden", norway_independence: "k_norway" },
    d_trondelag:  { start: "k_sweden", norway_independence: "k_norway" },

    d_courland:    { start: "e_russia", end_ww1: "d_courland", annexation_latvia: "e_russia", fall_soviet_union: "d_courland" },
    c_lettigalians:{ start: "e_russia", end_ww1: "d_courland", annexation_latvia: "e_russia", fall_soviet_union: "d_courland" },
    c_west_dvina:  { start: "e_russia", end_ww1: "d_courland", annexation_latvia: "e_russia", fall_soviet_union: "d_courland" },
    d_esthonia:    { start: "e_russia", end_ww1: "d_esthonia", annexation_estonia: "e_russia", fall_soviet_union: "d_esthonia" },
    d_livonia:     { start: "e_russia", end_ww1: "d_esthonia", annexation_estonia: "e_russia", fall_soviet_union: "d_esthonia" },


    # TODO: Polish Vilnius, Memel crisis
    d_lithuanians: { start: "e_russia", end_ww1: "d_lithuanians", annexation_lithuania: "e_russia", fall_soviet_union: "d_lithuanians" },
    c_zhmud:     { start: "e_russia", end_ww1: "d_lithuanians", annexation_lithuania: "e_russia", fall_soviet_union: "d_lithuanians" },
    c_memel:     { start: "e_russia", end_ww1: "d_lithuanians", annexation_lithuania: "e_russia", fall_soviet_union: "d_lithuanians" },

    d_dihistan:  { start: "e_russia", fall_soviet_union: "d_dihistan" },
    c_merv:      { start: "e_russia", fall_soviet_union: "d_dihistan" },

    d_samarkand: { start: "e_russia", fall_soviet_union: "k_khiva" },
    d_khiva:     { start: "e_russia", fall_soviet_union: "k_khiva" },
    c_aral:      { start: "e_russia", fall_soviet_union: "k_khiva" },

    d_turkestan: { start: "e_russia", fall_soviet_union: "k_cuman" },
    d_itil:      { start: "e_russia", fall_soviet_union: "k_cuman" },
    d_kipchak:   { start: "e_russia", fall_soviet_union: "k_cuman" },
    d_kimak:     { start: "e_russia", fall_soviet_union: "k_cuman" },
    d_zhetysu:   { start: "e_russia", fall_soviet_union: "k_cuman" },
    d_kirghiz:   { start: "e_russia", fall_soviet_union: "k_cuman" },
    d_yaik:      { start: "e_russia", fall_soviet_union: "k_cuman" },
    d_sibir:     { start: "e_russia", fall_soviet_union: "k_cuman" },
    d_syr_darya: { start: "e_russia", fall_soviet_union: "k_cuman" },
    c_bashkirs:  { start: "e_russia" },
    c_sibir:     { start: "e_russia" },

    # Xinjiang in China
    k_khotan:     { start: "k_khotan" },
    c_dunkheger:  { start: "k_khotan" },
    c_altay:      { start: "k_khotan" },

    c_maldives:   { start: "e_britannia", maldives_independence: "c_maldives" },
    k_lanka:      { start: "e_britannia", sri_lanka_independence: "k_lanka" },

    e_deccan:     { start: "e_britannia", india_independence: "e_india" },
    c_goa:        { start: "k_portugal",  goa_annexation: "e_india" },
    k_orissa:     { start: "e_britannia", india_independence: "e_india" },
    k_malwa:      { start: "e_britannia", india_independence: "e_india" },
    k_gujarat:    { start: "e_britannia", india_independence: "e_india" },
    k_delhi:      { start: "e_britannia", india_independence: "e_india" },
    k_rajputana:  { start: "e_britannia", india_independence: "e_india" },
    k_kosala:     { start: "e_britannia", india_independence: "e_india" },
    c_trigarta:   { start: "e_britannia", india_independence: "e_india" },
    c_sakala:     { start: "e_britannia", india_independence: "e_india" },
    e_bengal:     { start: "e_britannia", india_independence: "e_india" },

    # Names on CK2 map have very little correlation with names on real map
    # I think Nepal and Bhutan are out of map and these are the only parts of Bangladesh, but who knows really
    # c_suvarnagram might be part of India
    d_vanga:      { start: "e_britannia", india_independence: "k_baluchistan", bangladesh_independence: "k_bengal" },
    d_varendra:   { start: "e_britannia", india_independence: "k_baluchistan", bangladesh_independence: "k_bengal" },

    k_rus:        { start: "e_russia" },
    k_alania:     { start: "e_russia" },
    k_perm:       { start: "e_russia" },
    c_vodi:       { start: "e_russia" },
    c_semender:   { start: "e_russia" },
    c_derbent:    { start: "e_russia" },
    k_volga_bulgaria: { start: "e_russia" },
    d_kola:       { start: "e_russia" },
    d_karelia:    { start: "e_russia" },
    c_tmutarakan: { start: "e_russia" },
    d_azov:       { start: "e_russia" },
    d_ryazan:     { start: "e_russia" },
    d_sarkel:     { start: "e_russia" },
    c_bryansk:    { start: "e_russia" },
    d_smolensk:   { start: "e_russia" },

    c_luxembourg: { start: "d_luxembourg"},
    c_julich:     { start: "e_germany" },
    c_loon:       { start: "k_frisia" },
    c_liege:      { start: "d_flanders" },

    d_flanders:   { start: "d_flanders" },
    d_brabant:    { start: "d_flanders" },

    c_breda:      { start: "k_frisia" },
    d_holland:    { start: "k_frisia" },
    d_gelre:      { start: "k_frisia" },

    c_ostfriesland: { start: "e_germany" },
    d_holstein:     { start: "e_germany" },
    d_brunswick:    { start: "e_germany" },
    d_thuringia:    { start: "e_germany" },
    d_koln:         { start: "e_germany" },
    d_baden:        { start: "e_germany" },
    d_swabia:       { start: "e_germany" },
    d_bavaria:      { start: "e_germany" },
    d_franconia:    { start: "e_germany" },
    c_thuringen:    { start: "e_germany", end_ww2: "k_saxony", german_reunification: "e_germany"},
    d_meissen:      { start: "e_germany", end_ww2: "k_saxony", german_reunification: "e_germany"},
    d_brandenburg:  { start: "e_germany", end_ww2: "k_saxony", german_reunification: "e_germany"},
    d_mecklemburg:  { start: "e_germany", end_ww2: "k_saxony", german_reunification: "e_germany"},
    c_wolgast:      { start: "e_germany", end_ww2: "k_saxony", german_reunification: "e_germany"},
    d_saxony:       { start: "e_germany", end_ww2: "k_saxony", german_reunification: "e_germany"},

    c_stettin:      { start: "e_germany", end_ww2: "k_poland"},
    c_slupsk:       { start: "e_germany", end_ww2: "k_poland"},
    c_danzig:       { start: "e_germany", end_ww1: "d_pomeralia", end_ww2: "k_poland"},
    d_prussia:      { start: "e_germany", end_ww2: "k_poland"},
    c_sambia:       { start: "e_germany", end_ww2: "e_russia"},
    c_scalovia:     { start: "e_germany", end_ww2: "e_russia"},

    d_lesser_poland:     { start: "e_carpathia", end_ww1: "k_poland" },
    c_vladimir_volynsky: { start: "e_carpathia", end_ww1: "k_poland" },
    c_peremyshl:         { start: "e_carpathia", end_ww1: "k_poland" },
    d_galich:            { start: "e_carpathia", end_ww1: "k_poland", end_ww2: "e_russia", fall_soviet_union: "k_ruthenia" },

    d_cherson: { start: "e_russia", fall_soviet_union: "k_ruthenia", crimea_invasion: "e_russia" },
    c_crimea:  { start: "e_russia", fall_soviet_union: "k_ruthenia", crimea_invasion: "e_russia" },
    d_kiev:      { start: "e_russia", fall_soviet_union: "k_ruthenia"},
    d_pereyaslavl: { start: "e_russia", fall_soviet_union: "k_ruthenia"},
    d_chernigov:   { start: "e_russia", fall_soviet_union: "k_ruthenia"},
    d_crimea:      { start: "e_russia", fall_soviet_union: "k_ruthenia"},
    c_sharukan: { start: "e_russia", fall_soviet_union: "k_ruthenia"},
    c_novgorod_seversky: { start: "e_russia", fall_soviet_union: "k_ruthenia"},
    :"c_desht-i-kipchak" => { start: "e_russia", fall_soviet_union: "k_ruthenia"},

    d_vitebsk:  { start: "e_russia", fall_soviet_union: "d_minsk"},
    d_polotsk:  { start: "e_russia", fall_soviet_union: "d_minsk"},
    c_mstislavl:{ start: "e_russia", fall_soviet_union: "d_minsk"},
    d_turov:    { start: "e_russia", fall_soviet_union: "d_minsk"},

    c_pinsk:    { start: "e_russia", end_ww1: "k_poland", end_ww2: "e_russia", fall_soviet_union: "d_minsk"},
    c_jacwiez:  { start: "e_russia", end_ww1: "k_poland", end_ww2: "e_russia", fall_soviet_union: "d_minsk"},
    c_podlasie:{ start: "e_russia", end_ww1: "k_poland" },
    c_beresty: { start: "e_russia", end_ww1: "k_poland" },
    d_mazovia: { start: "e_russia", end_ww1: "k_poland" },
    d_kuyavia: { start: "e_russia", end_ww1: "k_poland" },
    c_kalisz:  { start: "e_russia", end_ww1: "k_poland" },

    c_lubusz: {start: "e_germany", end_ww2: "k_poland"},
    d_greater_poland: {start: "e_germany", end_ww1: "k_poland"},
    d_silesia: {start: "e_germany", end_ww2: "k_poland"},
    c_cieszyn: {start: "e_germany", silesian_uprising: "k_poland"},

    k_bohemia:      { start: "e_carpathia", czechoslovakia_independence: "k_bohemia" },
    d_nyitra:       { start: "e_carpathia", czechoslovakia_independence: "k_bohemia", czechoslovakia_dissolution: "d_slovakia" },
    c_pressburg:    { start: "e_carpathia", czechoslovakia_independence: "k_bohemia", czechoslovakia_dissolution: "d_slovakia" },
    c_saris:        { start: "e_carpathia", czechoslovakia_independence: "k_bohemia", czechoslovakia_dissolution: "d_slovakia" },

    c_trent:        { start: "e_carpathia", south_tirol_annexation: "e_italy" },

    d_osterreich:   { start: "e_carpathia", anschluss: "e_germany", end_ww2: "e_carpathia" },
    d_tyrol:        { start: "e_carpathia", anschluss: "e_germany", end_ww2: "e_carpathia" },
    c_salzburg:     { start: "e_carpathia", anschluss: "e_germany", end_ww2: "e_carpathia" },

    c_steiermark:   { start: "e_carpathia", end_ww1: "k_serbia", slovenia_independence: "d_carinthia" },
    c_aquileia:     { start: "e_carpathia", end_ww1: "k_serbia", slovenia_independence: "d_carinthia" },

    d_carinthia:    { start: "e_carpathia", end_ww1: "k_serbia", croatia_independence: "k_croatia" },
    c_zadar:        { start: "e_carpathia", end_ww1: "k_serbia", croatia_independence: "k_croatia" },
    c_varadzin:     { start: "e_carpathia", end_ww1: "k_serbia", croatia_independence: "k_croatia" },
    d_croatia:      { start: "e_carpathia", end_ww1: "k_serbia", croatia_independence: "k_croatia" },

    d_slavonia:     { start: "e_carpathia", end_ww1: "k_serbia", bosnia_independence: "d_bosnia" },
    c_zachlumia:    { start: "e_carpathia", end_ww1: "k_serbia", bosnia_independence: "d_bosnia" },
    c_split:        { start: "e_carpathia", end_ww1: "k_serbia", bosnia_independence: "d_bosnia" },
    c_usora:        { start: "e_carpathia", end_ww1: "k_serbia", bosnia_independence: "d_bosnia" },

    c_belgrade:     { start: "k_serbia" },
    d_rashka:       { start: "e_seljuk_turks", treaty_of_london: "k_serbia" },
    c_rama:         { start: "e_seljuk_turks", treaty_of_london: "k_serbia" },
    c_naissus:      { start: "e_seljuk_turks", treaty_of_london: "k_serbia" },

    # More or less Alsace-Lorraine
    d_alsace:       { start: "e_germany", end_ww1: "e_france"},
    c_lorraine:     { start: "e_germany", end_ww1: "e_france"},
    c_metz:         { start: "e_germany", end_ww1: "e_france"},

    d_upper_lorraine: { start: "e_france" },
    c_verdun:         { start: "e_france" },
    d_lower_lorraine: { start: "e_germany" },

    d_savoie:         { start: "k_burgundy" },
    d_upper_burgundy: { start: "k_burgundy" },

    d_tunis:        { start: "e_france", tunisia_independence: "d_tunis" },

    d_tripolitania: { start: "e_seljuk_turks", libya_italian: "e_italy", libya_independence: "d_tripolitania"},
    d_cyrenaica:    { start: "e_seljuk_turks", libya_italian: "e_italy", libya_independence: "d_tripolitania"},

    d_alger:        { start: "e_france", algeria_indepnedence: "d_alger" },
    d_kabylia:      { start: "e_france", algeria_indepnedence: "d_alger" },
    d_tlemcen:      { start: "e_france", algeria_indepnedence: "d_alger" },

    d_athens:      { start: "k_byzantium" },
    d_achaia:      { start: "k_byzantium" },
    c_naxos:       { start: "k_byzantium" },
    c_euboia:      { start: "k_byzantium" },
    c_cephalonia:  { start: "e_seljuk_turks", treaty_of_london: "k_byzantium" },
    d_krete:       { start: "d_krete", treaty_of_london: "k_byzantium" }, # De facto Greek in 1908
    d_thessalonika:{ start: "e_seljuk_turks", treaty_of_london: "k_byzantium" },
    d_epirus:      { start: "e_seljuk_turks", treaty_of_london: "k_byzantium" },
    c_philippopolis:{ start: "e_seljuk_turks", treaty_of_london: "k_byzantium" },
    c_lesbos:       { start: "e_seljuk_turks", treaty_of_london: "k_byzantium" },
    c_chios:        { start: "e_seljuk_turks", treaty_of_london: "k_byzantium" },

    d_turnovo:      { start: "k_bulgaria" },
    c_mesembria:    { start: "k_bulgaria" },
    c_karvuna:      { start: "k_bulgaria" },
    c_vidin:        { start: "k_bulgaria" },

    c_suenik:       { start: "e_russia", end_ww1: "d_armenia", annexation_armenia: "e_russia", fall_soviet_union: "d_armenia" },
    d_armenia:      { start: "e_russia", end_ww1: "d_armenia", annexation_armenia: "e_russia", fall_soviet_union: "d_armenia" },
    d_azerbaijan:   { start: "e_russia", end_ww1: "d_azerbaijan", annexation_azerbaijan: "e_russia", fall_soviet_union: "d_azerbaijan" },
    k_georgia:      { start: "e_russia", end_ww1: "k_georgia", annexation_georgia: "e_russia", fall_soviet_union: "k_georgia" },
    k_persia:       { start: "e_persia" },
    d_sistan:       { start: "e_persia" },
    d_kermanshah:   { start: "e_persia" },
    c_herat:        { start: "e_persia" },
    c_zaranj:       { start: "e_persia" },
    c_farrah:       { start: "e_persia" },

    d_nikaea:       { start: "e_seljuk_turks" },
    c_byzantion:    { start: "e_seljuk_turks" },
    d_armeniacon:   { start: "e_seljuk_turks" },
    d_thracesia:    { start: "e_seljuk_turks" },
    d_anatolia:     { start: "e_seljuk_turks" },
    d_charsianon:   { start: "e_seljuk_turks" },
    d_trebizond:    { start: "e_seljuk_turks" },
    d_paphlagonia:  { start: "e_seljuk_turks" },
    c_abydos:       { start: "e_seljuk_turks" },
    d_cibyrrhaeot:  { start: "e_seljuk_turks" },
    d_mesopotamia:  { start: "e_seljuk_turks" },
    d_coloneia:      { start: "e_seljuk_turks" },
    d_armenia_minor:{ start: "e_seljuk_turks" },
    c_ani:          { start: "e_seljuk_turks" },
    c_vaspurakan:   { start: "e_seljuk_turks" },
    c_tao:          { start: "e_seljuk_turks" },
    d_samos:        { start: "e_seljuk_turks" },
    d_edessa:       { start: "e_seljuk_turks"},
    c_amida:        { start: "e_seljuk_turks"},
    c_kurdistan:    { start: "e_seljuk_turks"}, # Maybe Iraq, but then Turkey wouldn't border Iran any more

    d_thrace:      { start: "e_seljuk_turks", treaty_of_sevres: "k_byzantium", treaty_of_lausanne: "e_seljuk_turks" },
    c_adrianopolis:{ start: "e_seljuk_turks", treaty_of_sevres: "k_byzantium", treaty_of_lausanne: "e_seljuk_turks" },
    c_smyrna:      { start: "e_seljuk_turks", treaty_of_sevres: "k_byzantium", treaty_of_lausanne: "e_seljuk_turks" },

    c_teluch:      { start: "e_seljuk_turks", treaty_of_sevres: "e_france", treaty_of_ankara: "e_seljuk_turks" },
    c_antiocheia:  { start: "e_seljuk_turks", treaty_of_sevres: "e_france", treaty_of_ankara: "e_seljuk_turks" },
    c_alexandretta:{ start: "e_seljuk_turks", treaty_of_sevres: "e_france", treaty_of_ankara: "e_seljuk_turks" },

    # Given to Greece September 15, 1947
    c_rhodos:      { start: "e_seljuk_turks", libya_italian: "e_italy", end_ww2: "k_byzantium"},

    d_baluchistan: { start: "e_britannia", india_independence: "k_baluchistan" },
    d_sauvira:     { start: "e_britannia", india_independence: "k_baluchistan" },
    d_bhakkar:     { start: "e_britannia", india_independence: "k_baluchistan" },
    c_vijnot:      { start: "e_britannia", india_independence: "k_baluchistan" },
    k_punjab:      { start: "e_britannia", india_independence: "k_baluchistan" },

    d_kabul:       { start: "k_afghanistan" },
    c_udabhanda:   { start: "k_afghanistan" },
    c_purushapura: { start: "k_afghanistan" },
    c_maymana:     { start: "k_afghanistan" },
    c_balkh:       { start: "k_afghanistan" },
    c_bost:        { start: "k_afghanistan" },
    c_mandesh:     { start: "k_afghanistan" },

    c_oromieh: { start: "e_seljuk_turks", british_iraq: "e_britannia", iraq_independence: "k_mesopotamia"},
    d_baghdad: { start: "e_seljuk_turks", british_iraq: "e_britannia", iraq_independence: "k_mesopotamia"},
    d_tigris:  { start: "e_seljuk_turks", british_iraq: "e_britannia", iraq_independence: "k_mesopotamia"},
    d_basra:   { start: "e_seljuk_turks", british_iraq: "e_britannia", iraq_independence: "k_mesopotamia"},
    c_az_zarqa:{ start: "e_seljuk_turks", british_iraq: "e_britannia", iraq_independence: "k_mesopotamia"},
    c_mosul:   { start: "e_seljuk_turks", british_iraq: "e_britannia", iraq_independence: "k_mesopotamia"},
    c_suwaida: { start: "e_seljuk_turks", british_iraq: "e_britannia", iraq_independence: "k_mesopotamia"},
    c_druz:    { start: "e_seljuk_turks", british_iraq: "e_britannia", iraq_independence: "k_mesopotamia"},
    c_sinjar:  { start: "e_seljuk_turks", british_iraq: "e_britannia", iraq_independence: "k_mesopotamia"},

    c_kuwait:  { start: "e_britannia", kuwait_independence: "d_basra" },
    c_bahrein: { start: "e_britannia", bahrain_independence: "c_bahrein" },

    d_alexandria: { start: "e_britannia", egypt_independence: "k_egypt" },
    d_cairo: { start: "e_britannia", egypt_independence: "k_egypt" },
    d_aswan: { start: "e_britannia", egypt_independence: "k_egypt" },
    d_damietta: { start: "e_britannia", egypt_independence: "k_egypt" },

    c_sinai: { start: "e_britannia", egypt_independence: "k_egypt", six_day_war: "k_israel", egypt_israel_peace: "k_egypt" },
    c_farama: { start: "e_britannia", egypt_independence: "k_egypt", six_day_war: "k_israel", egypt_israel_peace: "k_egypt" },
    :"c_el-arish"=> { start: "e_britannia", egypt_independence: "k_egypt", six_day_war: "k_israel", egypt_israel_peace: "k_egypt" },

    c_beirut: { start: "e_seljuk_turks", end_ww1: "e_france", lebanon_independence: "d_galilee" },
    c_tyrus:  { start: "e_seljuk_turks", end_ww1: "e_france", lebanon_independence: "d_galilee" },

    c_eilat:   { start: "e_seljuk_turks", end_ww1: "e_britannia", israel_independence: "k_israel" },
    c_negev:   { start: "e_seljuk_turks", end_ww1: "e_britannia", israel_independence: "k_israel" },
    d_ascalon: { start: "e_seljuk_turks", end_ww1: "e_britannia", israel_independence: "k_israel" },
    c_acre:    { start: "e_seljuk_turks", end_ww1: "e_britannia", israel_independence: "k_israel" },

    c_hebron:    { start: "e_seljuk_turks", end_ww1: "e_britannia", israel_independence: "d_oultrejourdain", six_day_war: "k_israel" },
    c_jerusalem: { start: "e_seljuk_turks", end_ww1: "e_britannia", israel_independence: "d_oultrejourdain", six_day_war: "k_israel" },

    c_tiberias: { start: "e_seljuk_turks", end_ww1: "e_france", syria_independence: "k_syria", six_day_war: "k_israel" },
    c_safed: { start: "e_seljuk_turks", end_ww1: "e_france", syria_independence: "k_syria" },
    c_tell_bashir: { start: "e_seljuk_turks", end_ww1: "e_france", syria_independence: "k_syria" },
    k_syria: { start: "e_seljuk_turks", end_ww1: "e_france", syria_independence: "k_syria" },
    d_jazira: { start: "e_seljuk_turks", end_ww1: "e_france", syria_independence: "k_syria" },


    d_oultrejourdain: { start: "e_seljuk_turks", end_ww1: "e_britannia", jordan_independence: "d_oultrejourdain" },
    c_petra: { start: "e_seljuk_turks", end_ww1: "e_britannia", jordan_independence: "d_oultrejourdain" },
    c_maan: { start: "e_seljuk_turks", end_ww1: "e_britannia", jordan_independence: "d_oultrejourdain" },
    c_amman: { start: "e_seljuk_turks", end_ww1: "e_britannia", jordan_independence: "d_oultrejourdain" },

    d_nefoud: { start: "k_arabia" },
    d_medina: { start: "e_seljuk_turks", end_ww1: "k_arabia" },
    d_arabia_petrae: { start: "e_seljuk_turks", end_ww1: "k_arabia" },
    d_amman:  { start: "e_seljuk_turks", end_ww1: "k_arabia", },

    d_esztergom:    { start: "e_carpathia", end_ww1: "k_hungary" },
    d_pecs:         { start: "e_carpathia", end_ww1: "k_hungary" },
    d_temes:        { start: "e_carpathia", end_ww1: "k_hungary" },
    d_pest:         { start: "e_carpathia", end_ww1: "k_hungary" },
    c_abauj:        { start: "e_carpathia", end_ww1: "k_hungary" },
    d_transylvania: { start: "e_carpathia", end_ww1: "k_dacia" },
    c_marmaros:     { start: "e_carpathia", end_ww1: "k_dacia" },

    k_mongolia: { start: "k_khotan", mongolia_independence: "k_mongolia" },

    c_taizz: { start: "e_seljuk_turks", north_yemen_independence: "d_arabia_felix", yemen_unification: "d_sanaa" },
    c_sanaa: { start: "e_seljuk_turks", north_yemen_independence: "d_arabia_felix", yemen_unification: "d_sanaa" },
    d_sanaa: { start: "e_britannia", south_yemen_independence: "d_sanaa" },

    c_trinkitat:{ start: "e_italy", eritrea_british: "e_britannia", eritrea_ethiopian: "k_abyssinia", eritrea_independence: "d_hayya"},
    c_hayya:    { start: "e_italy", eritrea_british: "e_britannia", eritrea_ethiopian: "k_abyssinia", eritrea_independence: "d_hayya"},
    c_assab:    { start: "e_italy", eritrea_british: "e_britannia", eritrea_ethiopian: "k_abyssinia", eritrea_independence: "d_hayya"},
    c_massawa:  { start: "e_italy", eritrea_british: "e_britannia", eritrea_ethiopian: "k_abyssinia", eritrea_independence: "d_hayya"},
    c_tadjoura: { start: "e_france", djibouti_independence: "d_afar" },

    c_kassala:   { start: "k_abyssinia" },
    k_abyssinia: { start: "k_abyssinia" },
    d_harer:     { start: "e_britannia", somalia_independence: "d_harer" },
    c_busaso:    { start: "e_italy", somalia_independence: "d_harer"  },

    d_songhay:    { start: "e_france", mali_independence: "d_songhay" },
    d_mali:       { start: "e_mali", mauritania_french: "e_france", mauritania_independence: "k_mali" },
    d_timbuktu:   { start: "e_mali", mauritania_french: "e_france", mauritania_independence: "k_mali" },
    c_ghana:      { start: "e_mali", mauritania_french: "e_france", mauritania_independence: "k_mali" },
    c_aoudaghost: { start: "e_mali", mauritania_french: "e_france", mauritania_independence: "k_mali" },
    k_nubia:      { start: "e_britannia", sudan_independence: "k_nubia" },

    c_severin:    { start: "k_dacia" },
    c_tirgoviste: { start: "k_dacia" },
    c_turnu:      { start: "k_dacia" },
    c_constantia: { start: "k_dacia" },

    c_dhu_zabi: { start: "e_britannia", oman_independence: "c_dhu_zabi" },
    d_oman:     { start: "e_britannia", oman_independence: "d_oman" },
  }
end
