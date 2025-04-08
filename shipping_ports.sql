CREATE TABLE shipping_ports (
    port_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    pod VARCHAR(100),
    region VARCHAR(50),
    country VARCHAR(50),
    shipping_lines TEXT
);

INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Adelaide', 'ANZ', 'Australia', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Brisbane', 'ANZ', 'Australia', 'PIL, ZIM, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('DARWIN', 'ANZ', 'Australia', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Fremantle', 'ANZ', 'Australia', 'PIL, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Melbourne', 'ANZ', 'Australia', 'PIL, ZIM, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Sydney', 'ANZ', 'Australia', 'PIL, ZIM, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('TOWNSVILLE', 'ANZ', 'Australia', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Auckland', 'ANZ', 'New Zealand', 'PIL, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Lyttelton', 'ANZ', 'New Zealand', 'PIL, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Napier', 'ANZ', 'New Zealand', 'PIL, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Port Chalmers', 'ANZ', 'New Zealand', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Tauranga', 'ANZ', 'New Zealand', 'PIL, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Wellington', 'ANZ', 'New Zealand', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Calgary', 'Canada', 'Canada', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Edmonton', 'Canada', 'Canada', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Halifax', 'Canada', 'Canada', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('HAMTLTON   VIA USNYC (via APMT/Maher) ', 'Canada', 'Canada', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Montereal', 'Canada', 'Canada', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Regina', 'Canada', 'Canada', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Saskatoon', 'Canada', 'Canada', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Toronto', 'Canada', 'Canada', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Vancouver', 'Canada', 'Canada', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Winnipeg', 'Canada', 'Canada', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('ST. JOHN''S', 'Carribean', 'Antigua Barbuda', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Baredera/ARUBA', 'Carribean', 'Aruba', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('NASSAU    (VAA JAMAICA/via Caucedo)', 'Carribean', 'Bahamas', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('BRIDGETOWN', 'Carribean', 'Barbados', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('BELIZE CITY', 'Carribean', 'Belize', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('GEORGETOWN', 'Carribean', 'Cayman Island', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('PUERTO LIMON, Moin', 'Carribean', 'Costa Rica', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('WILLEMSTAD  -CU RACAO', 'Carribean', 'Curacao', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('SAN JOSE  VIA CROIU
SAN7UAN', 'Carribean', 'Guatemala', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('SANTO TOMAS DE CASTILLA', 'Carribean', 'Guatemala', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('PORT AU PRINCE', 'Carribean', 'Haiti', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('PUERTO CORTES', 'Carribean', 'Honduras', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('TEGUCIGALPA  VIA HNPTZ', 'Carribean', 'Honduras', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('SAN PEDRO SULA   VIA HNPTZ', 'Carribean', 'Ivory Coast', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('MONTEGO  BAY', 'Carribean', 'Jamaica', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('MANAGUA  via HNPTZ', 'Carribean', 'Nicaragua', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('PHILTPSBURG (ST.MAARTEN)', 'Carribean', 'Sint Marteen', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('BASSETERRE (ST.KITTS) VAA DOCKE', 'Carribean', 'St Kitts', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('CASTRTES  via JAM@CA', 'Carribean', 'St Lucia', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('KTNGSTOWN', 'Carribean', 'St Vincent', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('CHARLOTTE AMALIE {ST.THOMAS)  VAA DOCKE', 'Carribean', 'US Virgin Island', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('ANQING', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('CHANGQING', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('CHANGSHA', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('CHANGSHU (JS)', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('CHANGZHOU (JS)', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Da Chan Bay', 'China', 'China', 'PIL, ESL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Dalian', 'China', 'China', 'HMM, PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('FUZHOU (FJ)', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('GAO MING', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Huangpu', 'China', 'China', 'HMM, PIL, ESL, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('HUANGSHI', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('JIANGYIN ', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('LIANYUNGANG', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('NANCHANG', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('NANGTONG', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Nanjin', 'China', 'China', 'PIL, ESL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('NANJING', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Nansha', 'China', 'China', 'HMM, PIL, ESL, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('NANTONG', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Ningbo', 'China', 'China', 'HMM, PIL, ESL, ZIM, Sea Horse, Bilander, TSL, Econ');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Pusan', 'China', 'China', 'PIL, ZIM, TSL, Econ');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Qingdao', 'China', 'China', 'HMM, PIL, ESL, ZIM, Sea Horse, Bilander, TSL, Econ');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('SANSHUI', 'China', 'China', 'ZIM, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Shanghai', 'China', 'China', 'HMM, PIL, ESL, ZIM, Sea Horse, Neptune, Bilander, TSL, Maixon, Econ');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Shekhou', 'China', 'China', 'PIL, ESL, Sea Horse, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Tianjin/Xingang', 'China', 'China', 'HMM, PIL, ESL, ZIM, Sea Horse, TSL, Econ');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('WENZHOU', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('WUHAN', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('WUHU', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Xiamen', 'China', 'China', 'PIL, ESL, ZIM, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('YANG ZHOU', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('YANTIAN', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('YICHANG', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('YUEYANG (HUNAN)', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Yunfu', 'China', 'China', 'PIL, ESL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('YUNFU', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('ZHANGJIAGANG', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('ZHENJIANG', 'China', 'China', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('ICD EMBAKASI', 'East Africa', 'Kenya', 'PIL, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('MOMBASA', 'East Africa', 'Kenya', 'PIL, ESL, H&L, TSL, UAFL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('TAMATAVE', 'East Africa', 'Madagascer', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('PORT LOUIS', 'East Africa', 'Mauritius', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('BEIRA', 'East Africa', 'Mozambique', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('MAPUTO', 'East Africa', 'Mozambique', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('NACALA', 'East Africa', 'Mozambique', 'PIL, UAFL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('REUNION', 'East Africa', 'Reunion', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Berbera', 'East Africa', 'Somalia', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Port Sudan', 'East Africa', 'Sudan', 'PIL, H&L, ALX, Sea marine, Win Win, Sea Horse');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('DAR ES SALAAM', 'East Africa', 'Tanzania', 'PIL, ESL, H&L, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Zanzibar', 'East Africa', 'Tanzania', 'PIL, ESL, UAFL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES (' KAMPALA', 'East Africa', 'Uganda', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('CONSTANTA', 'Eastern Europe', 'Romania', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Beuons Aries', 'ECSA', 'Argentina', 'HMM, PIL, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES (' ITAJAI', 'ECSA', 'Brazil', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES (' NAVEGANTES. ', 'ECSA', 'Brazil', 'HMM, PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Itapova', 'ECSA', 'Brazil', 'HMM, PIL, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('PRANAGUA', 'ECSA', 'Brazil', 'HMM, PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('RIO DE JANERIO', 'ECSA', 'Brazil', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Santos', 'ECSA', 'Brazil', 'HMM, PIL, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('CAUCEDO', 'ECSA', 'Dominican Republic', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('RIO HAIMA', 'ECSA', 'Dominican Republic', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('ROSEAU', 'ECSA', 'Dominican Republic', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('KTNGSTON', 'ECSA', 'Jamaica', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('PARAMARTBO', 'ECSA', 'Suriname', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('POINT LISAS', 'ECSA', 'Trinidad & Tobago', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('PORT OF SPAIN', 'ECSA', 'Trinidad & Tobago', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Monte Video', 'ECSA', 'Uruguay', 'HMM, PIL, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Baltimore', 'ECUS', 'USA', 'HMM, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Houston', 'ECUS', 'USA', 'HMM, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Miami', 'ECUS', 'USA', 'HMM, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('New York', 'ECUS', 'USA', 'HMM, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Norfolk', 'ECUS', 'USA', 'HMM, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Savannah', 'ECUS', 'USA', 'HMM, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Phnom Penn', 'Far East', 'Combodia', 'HMM, PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Sinhoukville', 'Far East', 'Combodia', 'HMM, PIL, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Bintulu', 'Far East', 'Malaysia East', 'PIL, Win Win, Sea Horse');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Kota Kinabalu', 'Far East', 'Malaysia East', 'PIL, Win Win');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Kuching', 'Far East', 'Malaysia East', 'PIL, Sea Horse');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Muara', 'Far East', 'Malaysia East', 'PIL, Sea Horse');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Sibu', 'Far East', 'Malaysia East', 'PIL, Sea Horse');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Belawan', 'Far East', 'Indonesia', 'HMM, PIL, ESL, ZIM, Maixon');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Jakarta', 'Far East', 'Indonesia', 'HMM, PIL, ESL, ZIM, Bilander, Maixon');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Semarang', 'Far East', 'Indonesia', 'HMM, PIL, ESL, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Surabaya', 'Far East', 'Indonesia', 'HMM, PIL, ESL, ZIM, Maixon');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Kobe', 'Far East', 'Japan', 'HMM, PIL, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Nagoya', 'Far East', 'Japan', 'HMM, PIL, ZIM, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Osaka', 'Far East', 'Japan', 'HMM, PIL, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Tokyo', 'Far East', 'Japan', 'HMM, PIL, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Yokohama', 'Far East', 'Japan', 'HMM, PIL, ZIM, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Pasir Gudang', 'Far East', 'Malaysia', 'HMM, PIL, ESL, ZIM, Win Win, TSL, Maixon');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Penang', 'Far East', 'Malaysia', 'HMM, PIL, ESL, ZIM, TSL, Maixon');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Port Klang (N)', 'Far East', 'Malaysia', 'HMM, PIL, ESL, ZIM, H&L, Sea marine, Win Win, Sea Horse, Neptune, Bilander, TSL, Maixon');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Tawau', 'Far East', 'Malaysia', 'Win Win, Sea Horse');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Sandakan', 'Far East', 'Malaysia', 'Win Win, Sea Horse');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Labuan', 'Far East', 'Malaysia', 'Sea Horse');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Port Klang (W)', 'Far East', 'Malaysia', 'HMM, PIL, ESL, ZIM, H&L, Sea marine, Win Win, Sea Horse');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Yangon ', 'Far East', 'Myanmar', 'HMM, PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Manila North', 'Far East', 'Phillipines', 'HMM, PIL, ZIM, TSL, Maixon');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Manila South', 'Far East', 'Phillipines', 'HMM, PIL, ZIM, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Singapore', 'Far East', 'Singapore', 'HMM, PIL, ESL, ZIM, H&L, Win Win, Sea Horse, Neptune, Bilander, TSL, Maixon');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Busan', 'Far East', 'South Korea', 'HMM, PIL, ESL, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Incheon', 'Far East', 'South Korea', 'HMM, PIL, ESL, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Kwangyang', 'Far East', 'South Korea', 'HMM, PIL, ESL, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Kaohsiung', 'Far East', 'Taiwan', 'HMM, PIL, ZIM, Sea Horse, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Keelung', 'Far East', 'Taiwan', 'HMM, PIL, ZIM, Sea Horse, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Taichung', 'Far East', 'Taiwan', 'HMM, PIL, ZIM, Sea Horse, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Bangkok', 'Far East', 'Thailand', 'HMM, PIL, ESL, ZIM, TSL, Maixon');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('LaemChabang', 'Far East', 'Thailand', 'HMM, PIL, ESL, ZIM, Win Win, Sea Horse, Neptune, Bilander, TSL, Maixon');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('LatKrabang', 'Far East', 'Thailand', 'HMM, PIL, ESL, ZIM, Sea Horse, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('CAI MEP, Ho Chi Minh City', 'Far East', 'Vietnam', 'HMM, PIL, ZIM, Sea Horse, Bilander, Maixon');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('CAT LAI, Ho Chi Minh City', 'Far East', 'Vietnam', 'HMM, PIL, ZIM, Sea Horse, Bilander, Maixon');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Danang', 'Far East', 'Vietnam', 'HMM, PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Haipong', 'Far East', 'Vietnam', 'ESL, ZIM, Win Win, Sea Horse, Bilander, TSL, Maixon');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('SPITC, Ho Chi Minh City', 'Far East', 'Vietnam', 'HMM, PIL, ZIM, Sea Horse, Maixon');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('HongKong', 'Far East', 'HongKong', 'ESL, ZIM, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('ALGIER', 'Med Sea', 'Algeria', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('LIMASSOL', 'Med Sea', 'Cyprus', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('ALEXANDRIA', 'Med Sea', 'Egypt', 'HMM, H&L');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('DAMIETTA', 'Med Sea', 'Egypt', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('PORT SAID EAST', 'Med Sea', 'Egypt', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('POTI', 'Med Sea', 'Georgia', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('BEIRUT', 'Med Sea', 'Lebanon', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('MISURATA', 'Med Sea', 'Libya', 'HMM, Win Win');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('BENGAZHI', 'Med Sea', 'Libya', 'Win Win');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('TRIPOLI', 'Med Sea', 'Libya', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('BAR, MONTENEGRO', 'Med Sea', 'Montenegro', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('CASABLANCA', 'Med Sea', 'Morocco', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('TANGIER', 'Med Sea', 'Morocco', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('LATAKIA', 'Med Sea', 'Syria', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('ALIAGA', 'Med Sea', 'Turkey', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('AMBARLI', 'Med Sea', 'Turkey', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('GEMLIK', 'Med Sea', 'Turkey', 'HMM, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Belde', 'Med Sea', 'Turkey', 'ALX');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('HAYDARPASA', 'Med Sea', 'Turkey', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('ISTANBUL', 'Med Sea', 'Turkey', 'HMM, Win Win');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('IZMIT', 'Med Sea', 'Turkey', 'HMM, ZIM, Win Win');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('KUMPORT', 'Med Sea', 'Turkey', 'HMM, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('MERSIN', 'Med Sea', 'Turkey', 'HMM, ZIM, H&L, Win Win');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Hamad', 'Middle East', 'Qatar', 'Win Win, Bilander');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Bahrain', 'Middle East', 'Bahrain', 'ESL, H&L, ALX, Win Win, Neptune, Maixon');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Sharjah', 'Middle East', 'Neptune', 'ALX, Win Win');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Bandar Abbas', 'Middle East', 'IRAQ', 'H&L, Sea marine, Win Win, Sea Horse, Barco Freight, Bilander, Econ');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('ASHDOD', 'Middle East', 'Israel', 'HMM, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('ASHDOD (PL)', 'Middle East', 'Israel', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('HAIFA', 'Middle East', 'Israel', 'HMM, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Shuwaikh', 'Middle East', 'Kuwait', 'ESL, Win Win, Neptune, Bilander');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Sohar', 'Middle East', 'Oman', 'ESL, H&L, ALX, Neptune, Bilander, TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Salalah', 'Middle East', 'Oman', 'Sea Horse');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Jebel Ali', 'Middle East', 'UAE', 'ESL, H&L, Sea marine, Win Win, Sea Horse, Neptune, Barco Freight, Bilander, TSL, Maixon, Econ');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Aden', 'Middle East', 'Yemen', 'PIL, H&L');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Hodeidah', 'Middle East', 'Yemen', 'Sea marine');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('CANTON ISLAND', 'Oceania', 'Canton Island', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('AITUTAKI', 'Oceania', 'Cook Island', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('RARTONGA', 'Oceania', 'Cook Island', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('DILI', 'Oceania', 'East Timor', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('LAUTOKA', 'Oceania', 'Fiji', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('PAPEETE', 'Oceania', 'French Polynesia', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('FUTUNA', 'Oceania', 'New Caledonia', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('NOUMEA', 'Oceania', 'New Caledonia', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('PORT LAE', 'Oceania', 'Papua New Guinea', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('PORT MORESBY ', 'Oceania', 'Papua New Guinea', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('APIA', 'Oceania', 'Samoa', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('NUKU''ALOFA', 'Oceania', 'Tonga', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('FUNAFATI', 'Oceania', 'Tuvalu', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('PORT VILA', 'Oceania', 'Vanuatu', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('SANT', 'Oceania', 'Vanuatu', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('DJIBOUTI', 'Red Sea', 'Djibouti', 'HMM, PIL, H&L');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('SOKHNA', 'Red Sea', 'Egypt', 'PIL, ESL, H&L, ALX, Sea marine, Win Win, Sea Horse, Bilander, Maixon, Econ');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('AQABA', 'Red Sea', 'Jordan', 'HMM, PIL, ESL, H&L, ALX, Sea marine, Win Win, Neptune');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Dammam', 'Red Sea', 'Saudi Arabia', 'ESL, ALX, Win Win, Sea Horse, Neptune, Bilander, TSL, Econ');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('JEDDAH', 'Red Sea', 'Saudi Arabia', 'HMM, PIL, ESL, H&L, ALX, Sea marine, Win Win, Sea Horse, Neptune, Maixon');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Riyadh', 'Red Sea', 'Saudi Arabia', 'ESL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Novorrossiysk', 'Russia', 'Russia', 'H&L, ALX');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('St Petersberg', 'Russia', 'Russia', 'H&L');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('St Petersberg', 'Russia', 'Russia', 'Sea Horse');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Capetown', 'South Africa', 'South Africa', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Durban', 'South Africa', 'South Africa', 'PIL, UAFL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Johannesburg', 'South Africa', 'South Africa', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Chittagong', 'South East Asia', 'Bangladesh', 'HMM, ZIM, H&L, Win Win, Neptune, Maixon, Econ');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Dhaka', 'South East Asia', 'Bangladesh', 'HMM, Maixon');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Male', 'South East Asia', 'Maldives', 'HMM, ZIM, Sea Horse');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Karachi / In transit to afghan', 'South East Asia', 'Pakistan', 'HMM, H&L, Sea marine, Win Win, Barco Freight, Econ');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Colombo', 'South East Asia', 'Sri Lanka', 'HMM, ESL, ZIM, Win Win, Neptune, Bilander, TSL, Maixon');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('DURRES', 'Southern Europe', 'Albania', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('BURGAS', 'Southern Europe', 'Bulgaria', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('VARNA', 'Southern Europe', 'Bulgaria', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('PLOCE', 'Southern Europe', 'Croatia', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('RIJEKA', 'Southern Europe', 'Croatia', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('PIRAEUS', 'Southern Europe', 'Greece', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('THESSALONIKI', 'Southern Europe', 'Greece', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('BARI', 'Southern Europe', 'Italy', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('GENOA', 'Southern Europe', 'Italy', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('LA SPEZIA', 'Southern Europe', 'Italy', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('LIVORNO', 'Southern Europe', 'Italy', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('SALERNO', 'Southern Europe', 'Italy', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('LEIXOES', 'Southern Europe', 'Portugal', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('LISBON', 'Southern Europe', 'Portugal', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('ALGERIRAS', 'Southern Europe', 'Spain', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('BARCELONA', 'Southern Europe', 'Spain', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('BILBAO', 'Southern Europe', 'Spain', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('VALENCIA', 'Southern Europe', 'Spain', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('VIGO', 'Southern Europe', 'Spain', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('SAN ANTONIO', 'WCSA', 'Chile', 'PIL, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('BARRANQUILLA', 'WCSA', 'Colombia', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('BUENAVENTURA', 'WCSA', 'Colombia', 'PIL, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('CARTAGENA', 'WCSA', 'Colombia', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('CARTEGENA', 'WCSA', 'Colombia', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('GUAYAQUIL', 'WCSA', 'Equador', 'PIL, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('PUERTO QUETZEL', 'WCSA', 'Guatemala', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('ALTAMIRA', 'WCSA', 'Mexico', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('LAZARO CARDINAS', 'WCSA', 'Mexico', 'PIL, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('MANZANILLO', 'WCSA', 'Mexico', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('PROGRESSO', 'WCSA', 'Mexico', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('VERACRUZ', 'WCSA', 'Mexico', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Colon Free Zone via Cristobal', 'WCSA', 'Panama', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Cristobal', 'WCSA', 'Panama', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Panama  City via CristobaT', 'WCSA', 'Panama', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('CALLAO', 'WCSA', 'Peru', 'PIL, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('FREEPORT (direct on ZNF/Z7S/ZGC)', 'WCSA', 'US', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('GUANTA', 'WCSA', 'Venezuela', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('GUARANAO', 'WCSA', 'Venezuela', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('LA GUAIRA', 'WCSA', 'Venezuela', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('MARACATBO', 'WCSA', 'Venezuela', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('PUERTO CABELtO', 'WCSA', 'Venezuela', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Hueneme', 'WCUS', 'US', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Long Beach', 'WCUS', 'US', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Los Angeles', 'WCUS', 'US', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Oakland', 'WCUS', 'US', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('San Diego', 'WCUS', 'US', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Seattle and Tacoma', 'WCUS', 'US', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Cotonu', 'West Africa', 'Benin', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Douala', 'West Africa', 'Cameron', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Tema', 'West Africa', 'Ghana', 'PIL, ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Abidjan', 'West Africa', 'Ivory Coast', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Apapa', 'West Africa', 'Nigeria', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Lagos', 'West Africa', 'Nigeria', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('ONNE', 'West Africa', 'Nigeria', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Tin Can', 'West Africa', 'Nigeria', 'ZIM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Lome', 'West Africa', 'Togo', 'PIL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('FOS', 'Western Europe', 'France', 'HMM');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Port Victoria', NULL, NULL, 'UAFL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Mutsamudu', NULL, NULL, 'UAFL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Moroni', NULL, NULL, 'UAFL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Umm Qasar', NULL, 'IRAQ', 'Bilander');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('ICD PHUOC Long', 'Far East', 'Vietnam', 'TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Moji', 'Far East', 'Japan', 'TSL');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Doha', NULL, NULL, 'Econ');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('BIK', NULL, NULL, 'Econ');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('Bushehr', NULL, NULL, 'Econ');
INSERT INTO shipping_ports (pod, region, country, shipping_lines) VALUES ('KhorramShahr', NULL, NULL, 'Econ');
