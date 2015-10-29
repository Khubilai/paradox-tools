ModernTimesDatabase::HOLDERS_CENTRAL_EUROPE = {
  e_carpathia: {
    "1804.8.11"  => {name: "Francis | Habsburg", lived: "1768.2.12 - 1835.3.2"},
    "1835.3.2"   => {name: "Ferdinand | Habsburg", lived: "1793.4.19 - 1875.6.29"},
    # Can't find day date, just month
    "1848.12.1"  => {name: "Francis Joseph | Habsburg", lived: "1830.8.18 - 1916.11.21", health: 6},
    "1916.11.21" => {name: "Charles | Habsburg", lived: "1911.10.21 - 1922.4.1"},
    "1918.11.11" => nil,
  },
  k_hungary: {
    # Backdating hard
    end_ww1: {
      name: "Miklós Horthy",
      lived: "1868–1957",
    },
    # Government of National Unity all time
    "1944.10.15" => {
      name: "Ferenc Szálasi",
      lived: "1897–1946",
    },
    # Communist,
    # General Secretary since February, but only count after Ferenc Szálasi is gone
    "1945.3.28" => {
      name: "Mátyás Rákosi",
      lived: "1892–1971",
    },
    "1956.7.18" => {
      name: "Ernő Gerő",
      lived: "1898–1980",
    },
    "1956.10.25" => {
      name: "János Kádár",
      lived: "1912–1989",
    },
    "1988.5.27" => {
      name: "Károly Grósz",
      lived: "1930–1996",
    },
    "1989.6.26" => {
      name: "Rezső Nyers",
      lived: "1923–",
    },
    # Post-Communist
    # Provisional, backdated
    "1989.10.7" => {
      name: "Mátyás Szűrös",
      lived: "1933–",
    },
    "1990.5.2" => {
      name: "Árpád Göncz",
      lived: "1922–2015",
    },
    "2000.8.4" => {
      name: "Ferenc Mádl",
      lived: "1931–2011",
    },
    "2005.8.5" => {
      name: "László Sólyom",
      lived: "1942–",
    },
    "2010.8.6" => {
      name: "Pál Schmitt",
      lived: "1942–",
    },
    # backdating from 10 April 2012
    "2012.4.2" => {
      name: "János Áder",
      lived: "1959–",
    },
  },
  d_nyitra: {
    # Slovak State under Nazis
    "1939.3.15" => {
      name: "Jozef Tiso",
      lived: "13 October 1887 – 18 April 1947",
    },
    "1945.5.8" => nil,
    # 2 March 1993, backdating
    "1993.1.1" => {name: "Michal | Kovac", lived: "1930.8.5 -"},
    # 15 June 1999, backdating
    "1998.3.2" => {name: "Rudolf | Schuster", lived: "1934.1.4 -"},
    "2004.6.15" => {name: "Ivan | Gasparovic", lived: "1941.3.27 -"},
    "2014.6.15" => {name: "Andrej | Kiska", lived: "1963.2.2 -"},
  },
  k_poland: {
    end_ww1: {name: "Jozef | Pilsudski", lived: "1867.12.5 - 1935.5.12", health: 6},
    "1922.12.11" => {name: "Gabriel | Narutowicz", lived: "1865.3.17 - 1922.12.16"},
    "1922.12.16" => {name: "Stanislaw | Wojciechowski", lived: "1869.3.15 - 1953.4.9"},
    # Not officially, but everybody knows who ruled
    "1926.5.14" => {use: "Jozef 1"},
    "1935.5.12" => {name: "Ignacy | Moscicki", lived: "1867.12.1 - 1946.10.2"},
    # government in exile
    "1939.9.30" => {name: "Wladyslaw | Raczkiewicz", lived: "1885.1.28 - 1947.6.6"},

    # Communist Poland had no clear head of state, by design
    # First secretaries, except Jaruzelski gets to keep his post during transition
    # December 22, 1948, backdating
    end_ww2: {name: "Boleslaw | Bierut", lived: "1892.4.18 - 1956.3.12"},
    "1956.3.12" => {name: "Edward | Ochab", lived: "1906.8.16 - 1989.5.1"},
    "1956.10.21" => {name: "Wladyslaw | Gomulka", lived: "1905.2.6 - 1982.9.1"},
    "1970.12.20" => {name: "Edward | Gierek", lived: "1913.1.6 - 2001.7.29"},
    "1980.9.6" => {name: "Stanislaw | Kania", lived: "1927.3.8 -"},
    "1981.10.18" => {name: "Wojciech | Jaruzelski", lived: "1923.7.6 - 2014.5.25"},
    "1990.12.22" => {name: "Lech | Walesa", lived: "1943.9.29 -", health: 6},
    "1995.12.23" => {name: "Aleksander | Kwasniewski", lived: "1954.11.15 -"},
    "2005.12.23" => {name: "Lech | Kaczynski", lived: "1949.6.18 - 2010.4.10"},
    # acting, then actual, skipping other acting presidents
    "2010.4.10" => {name: "Bronislaw | Komorowski", lived: "1952.6.4 -"},
    "2015.8.6" => {name: "Andrzej | Duda", lived: "1972.5.16 -"},
  },
  c_krakowskie: {
    congress_of_vienna: { name: "Stanislaw | Wodzicki", lived: "1764.7.27 - 1843.3.14" },
    "1833.3.24" => { name: "Kasper | Wieloglowski", lived: "- 1847" },
    "1836.2.25" => { name: "Jozef | Haller", lived: "1783 - 1850.12.3" },
    "1839.4.27" => { name: "Jan | Schindler", lived: "1802.9.3 - 1890.4.4" },
    fall_krakow_uprising: nil,
  },
  c_danzig: {
    # Präsident des Senats
    end_ww1: {
      name: "Heinrich Sahm",
      lived: "12 September 1877 – 3 October 1939",
    },
    "1931.1.10" => {
      name: "Ernst Ziehm",
      lived: "1867.5.1 - 1962.7.7",
    },
    "1933.6.20" => {
      name: "Hermann Rauschning",
      lived: "7 August 1887 – February 8, 1982",
    },
    "1934.11.23" => {
      name: "Arthur Greiser",
      lived: "22 January 1897 – 21 July 1946",
    },
    end_ww2: nil,
  },
  k_dacia: {
    # actually "1866.4.20", ignore until he gets independent
    treaty_of_berlin: {
      name: "Carol | Hohenzollern-Sigmaringen",
      lived: "20 April 1839 – 10 October 1914",
    },
    # nephew of Carol 1
    "1914.10.10" => {
      name: "Ferdinand | Hohenzollern-Sigmaringen",
      lived: "24 August 1865 – 20 July 1927",
    },
    # This is just dumb, Ferdinand's son Carol renounced right to throne
    # in favour of his son Michael, then decided to go back on it
    # DSL can't currently support this
    "1927.7.20" => {
      name: "Michael | Hohenzollern-Sigmaringen",
      lived: "1921.10.25-",
      # father: "Carol 2",
    },
    "1930.6.8" => {
      name: "Carol | Hohenzollern-Sigmaringen",
      lived: "15 October 1893 – 4 April 1953",
      father: "Ferdinand 1",
    },
    "1940.9.6" => {
      use: "Michael 1",
    },
    # Communists
    "1947.12.30" => {
      name: "Constantin Ion | Parhon",
      lived: "1874–1969",
    },
    "1952.6.12" => {
      name: "Petru Groza",
      lived: "1884–1958",
    },
    # Backdating from 1958.1.11
    "1958.1.7" => {
      name: "Ion Gheorghe | Maurer",
      lived: "1902–2000",
    },
    "1961.3.21" => {
      name: "Gheorghe Gheorghiu-Dej",
      lived: "November 8, 1901 – March 19, 1965",
    },
    # Backdating from 1965.3.24
    "1965.3.19" => {
      name: "Chivu Stoica",
      lived: "1908–1975",
    },
    "1967.12.9" => {
      name: "Nicolae Ceaușescu",
      lived: "26 January 1918 – 25 December 1989",
    },
    # Backdating from 1989.12.26
    "1989.12.22" => {
      name: "Ion Iliescu",
      lived: "1930–",
    },
    "1996.11.29" => {
      name: "Emil Constantinescu",
      lived: "1939–",
    },
    "2000.12.20" => { use: "Ion 1" },
    # Twice suspended by parliament, we don't care about that
    "2004.12.20" => {
      name: "Traian Băsescu",
      lived: "1951–",
    },
    "2014.12.21" => {
      name: "Klaus Iohannis",
      lived: "1959–",
    },
  },
}
