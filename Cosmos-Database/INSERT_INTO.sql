/********************* 
PLANET
**********************/
INSERT INTO Planet (name, star, habitable, logDate, description)
VALUES
('Earth', 'Sol', 1, NULL, 'Terrestrial'),
('Aurorus', 'Panthera', 1, '2012-05-14 13:47:08', 'Terrestrial'),
('Achilles', 'Kadosh', 1, '2013-11-20 10:32:12', 'Terrestrial'),
('Okéanos', 'Caldrun', 1, '2015-07-07 11:12:13', 'Hypherian'),
('Zenith', 'Stellar Ridge', 0, '2016-02-12 07:43:23', 'Gas Giant'),
('Lyric', 'Tarpax', 1, '2017-09-01 09:08:07', 'Super-Earth'),
('Kharos', 'Aquila', 0, '2018-03-11 14:23:17', 'Super-Earth'),
('Dégron', 'Altair', 1, '2019-12-25 11:14:14', 'Hypherian'),
('Cinbrali', 'Volcanis', 1, '2020-06-30 00:12:45', 'Terrestrial'),
('Gihara', 'Edani', 0, NULL, 'Gas Giant'),
('Pelora', 'Androd', 1, '2022-08-09', 'Hypherian'),
('Xyris', 'Kronos', 0, '2023-01-19 16:15:14', 'Ice Giant'),
('Tython', 'Celestia', 1, NULL, 'Terrestrial'),
('Novara', 'X38', 1, NULL, 'Terrestrial'),
('Zerath', 'Draco', 0, NULL, 'Gas Giant'),
('Lumina', 'Vega', 1, '2024-01-01', 'Super-Earth');

/*********************
SHIP
**********************/
INSERT INTO Ship (manufacturer, model, shipClass, capacity, startYear, endYear)
VALUES
('Nova', 'Velox', 'EXP', 120, 2025, NULL),
('Forge', 'Infinitum', 'BAT', 300, 2012, 2021),
('Nova', 'Polaris', 'SCI', 80, 2018, NULL),
('The Guild', 'Crimson Scepter', 'TRA', 60, 2010, 2020),
('AstroWorks', 'Expanse', 'EXP', 100, 2017, NULL),
('Voyager', 'Pioneer', 'SCI', 50, 2018, NULL),
('Forge', 'Titan', 'BAT', 400, 2019, NULL),
('Celestia', 'Borialis', 'TRA', 70, 2020, NULL),
('Nova', 'Astera', 'EXP', 130, 2021, NULL),
('Forge', 'Eclipse', 'BAT', 250, 2015, NULL),
('Celestia', 'Comet', 'TRA', 90, 2018, NULL),
('StellarWorks', 'Colossus', 'EXP', 600, 2022, NULL),
('Forge', 'Leviathan', 'BAT', 900, 2020, NULL),
('Nova', 'Aurora', 'SCI', 450, 2023, NULL);

/*********************
VOYAGE
**********************/
INSERT INTO Voyage (shipID, originPlanetID, destinationPlanetID, startDate, endDate, purpose, projectedCost, finalCost)
VALUES
(1, 1, 2, '2018-04-01', '2018-04-10', 'Diplomacy', 1200000, 1185000),
(2, 3, 5, '2019-05-12', '2019-05-20', 'Diplomacy', 5000000, 5600000),
(3, 2, 2, '2020-06-05', '2020-06-15', 'Research', 800000, 750000),
(4, 4, 1, '2015-07-01', '2015-07-07', 'Trade', 100000, NULL),
(1, 1, 2, '2016-04-01', '2017-04-10', 'Research', 1200000, 1185000),
(5, 6, 8, '2021-03-01', NULL, 'Supplies', 600000, NULL),
(6, 7, 9, '2020-12-01', '2020-12-12', 'Research', 400000, 410000),
(7, 8, 2, '2022-08-05', '2022-08-18', 'Diplomacy', 750000, 760000),
(8, 4, 3, '2021-09-15', NULL, 'Trade', 300000, NULL),
(1, 1, 2, '2019-04-01', '2021-04-10', 'Trade', 1200000, 1185000),
(5, 11, 12, '2023-01-05', '2023-01-20', 'Research', 900000, 910000),
(10, 12, 6, '2019-11-02', '2019-11-10', 'Military', 1200000, 1250000),
(11, 13, 1, '2023-04-01', NULL, 'Supplies', 450000, NULL),
(1, 8, 7, '2022-02-10', '2022-02-20', 'Research', 500000, 495000),
(14, 14, 15, '2025-03-01', NULL, 'Supplies', 2000000, NULL),
(15, 15, 16, '2025-05-10', '2025-05-20', 'Military', 5000000, 4800000),
(16, 16, 14, '2025-06-01', '2025-06-15', 'Research', 750000, 700000);

/*********************
BIOTYPE
**********************/
INSERT INTO Biotype (homePlanetID, name, sapient, averageLifespan, description, firstContact)
VALUES
(1, 'Human', 1, 90, 'Adaptive and curious.', NULL),
(2, 'Ekkluvian', 1, 150, 'Advanced technology. Bioluminescent beings.', '2012-05-14'),
(3, 'Cardan', 1, 120, 'Metachrosis. Humanoid.', '2013-11-20'),
(4, 'Aquani', 0, 200, 'Amphibious ocean dwellers.', '2015-07-07'),
(6, 'Lyrian', 1, 100, 'Telepathic after age 45. Humanoids.', '2017-09-01'),
(3, 'Khari', 0, 80, 'Geo-biology. Nomadic. Radiation resistance.', '2018-03-11'),
(13, 'Veyran', 1, 70, 'Tall desert dwellers. Honor-shame culture.', NULL),
(9, 'Emberi', 1, 95, 'Fire-resistant humanoids from volcanic regions.', '2020-06-30'),
(11, 'Peloran', 1, 85, 'Tropic forest dwellers. Excellent hunters.', '2022-08-09'),
(12, 'Kronan', 0, 50, 'Skeptical of outsiders. Not much is known.', '2023-01-19'),
(4, 'Wyki', 1, 110, 'Limited technology. Some live on nearby moon.', NULL),
(14, 'Zorvian', 0, 120, 'Tentacled amphibians', NULL),
(15, 'Lumini', 1, 85, 'Bioluminescent humanoids', '2024-02-02');
/*********************
INDIVIDUAL
**********************/
INSERT INTO Individual (biotypeID, homePlanetID, firstName, lastName, earthDOB)
VALUES
(1, 1, 'Aurora', 'Sol', '1990-03-11'),
(3, 3, 'Kina', 'Havok', '1985-09-25'),
(2, 2, 'Fiova', 'Lahah', NULL),
(NULL, 1, 'Carek', 'Tusk', '1988-08-14'),
(4, 4, 'Indaya', 'Phal', '1975-04-20'),
(3, 3, 'Réxim', 'Torr', NULL),
(NULL, 6, 'Sira', 'Nyce', '1992-11-22'),
(6, 7, 'Jericho', 'Nimbus', '1978-01-15'),
(7, 8, 'Zaría', 'Dune', NULL),
(8, 9, 'Cruz', 'Quasar', '1983-02-27'),
(9, 11, 'Vexa', 'Dream', '1999-10-05'),
(10, 12, 'Gorak', 'Pang', '1990-06-06'),
(11, 13, 'Lyra', 'Sands', NULL),
(NULL, 14, 'Orin', 'Bell', '2000-01-01'),
(15, 15, 'Luma', 'Bright', '1995-07-07');

/*********************
ADDRESS
**********************/
INSERT INTO Address (number, street, city, state, nation, planet)
VALUES
(42, 'Constellation Blvd', 'Kansas City', 'Missouri', 'USA', 'Earth'),
(15, 'Twinkle Blvd', 'Veyra', 'High Plains', 'Ekkluvian Union', 'Aurorus'),
(777, 'Starry Rd', 'Keznar', 'Ashen Ridge', 'Hypherian Clans', 'Achilles'),
(801, 'Astro Wy', 'Tethys', 'Pelagia', 'Orin', 'Okéanos'),
(301, 'Stardust Ln', 'Lyricon', 'North Reach', 'Luminaria', 'Lyric'),
(22, 'Cosmic Cir', 'Tharok City', 'Lowlands', 'Tharok Tribes', 'Kharos'),
(501, 'Asteroid Dr', 'Sandspire', 'Central Flats', 'Veyran Collective', 'Dégron'),
(66, 'Galaxy Ridge Dr', 'Moltara', 'South Rims', 'Cindralian Alliance', 'Cindralis'),
(123, 'Emerald Ave', 'Pelora Prime', 'Deepwilds', 'Peloran States', 'Pelora'),
(9, 'Nova St', 'Tyris Hollow', 'Glacier Belt', 'Crucis', 'Xyris'),
(5, 'Lunar Ln', 'Tython City', 'Desert Zone', 'Mak', 'Tython');

/*********************
CONTACT
**********************/
INSERT INTO Contact (individualID, addressID, emailAddress, phoneNumber)
VALUES
(1, 1, 'aurora.sol@earthling.nova', '+1-555-2200'),
(2, 2, 'havokk@galactic.nova', NULL),
(3, 3, NULL, '+9-555-8833'),
(4, 4, 'carek56@galactic.star', '+1-555-1122'),
(5, 4, 'indaya.phal@polaris.star', NULL),
(6, 3, NULL, NULL),
(7, 5, 'nyces@galactic.nova', '+4-555-7766'),
(8, 6, 'jnimbus@collective.star', '+5-555-3344'),
(9, 7, 'zaria.dune@collective.star', NULL),
(10, 8, 'quesarc@alliance.nova', '+3-555-5566'),
(14, 9, 'orin.bell@novara.nova', '+2-555-1122'),
(15, 10, 'luma.bright@lumini.star', '+2-555-3344');

/*********************
EVALUATION
**********************/
INSERT INTO Evaluation (individualID, evaluatorID, evalDate, score, notes)
VALUES
(1, 5, '2018-04-11', 95, 'Excellent leadership during negotiations'),
(4, 1, '2018-04-12', 88, 'Kept ship systems stable under stress'),
(2, 6, '2019-05-21', 70, 'Aggressive tactics, mixed results'),
(3, 5, '2020-06-16', 99, NULL),
(7, 8, '2021-07-10', 85, 'Exploration efficiency outstanding'),
(9, 10, '2022-01-05', 60, NULL),
(11, 12, '2023-04-20', 92, 'Trade negotiations successful'),
(5, 3, '2019-08-12', 78, NULL),
(6, 2, '2018-12-30', 88, 'Science mission completion'),
(8, 7, '2021-05-14', 90, 'Security maintained during conflict'),
(13, 1, '2023-04-05', 82, 'Astrophysics mission evaluated'),
(1, 14, '2023-04-16', 97, 'Excellent collaboration'),
(14, 1, '2025-07-01', 55, 'Needs improvement'),
(15, 2, '2025-07-15', 100, 'Outstanding performance'),
(1, 2, '2025-06-10', 88, 'Steady work');

/*********************
DISCOVERY
**********************/
INSERT INTO Discovery (loggerID, voyageID, discoveryType, description, logDate)
VALUES
(1, 1, 'Flora', 'New plant Kindred', '2018-04-05'),
(2, 2, 'Fauna', NULL, '2019-05-15'),
(3, 3, 'Geology', 'New tectonic activity', '2020-06-10'),
(4, 4, 'Oceanography', NULL, '2015-07-05'),
(5, 5, 'Exobiology', 'Ice-adapted insects', '2021-03-05'),
(6, 6, 'Astronomy', 'New moon mapped', '2020-12-05'),
(7, 7, 'Defense', NULL, '2022-08-10'),
(8, 8, 'Trade', 'Dark market trading routes', '2021-09-18'),
(9, 9, 'Exploration', NULL, '2023-01-10'),
(10, 10, 'Astronomy', 'Dark matter disturbance', '2019-11-05'),
(11, 11, 'Research', 'Ancient artifact discovered', '2023-04-02'),
(12, 12, 'Science', NULL, '2022-02-15');

/*********************
CONFLICT
**********************/
INSERT INTO Conflict (voyageID, name, startDate, endDate, description, outcome)
VALUES
(2, 'Battle of Kenzana', '2019-05-20', NULL, 'Major fleet engagement near the gas giant.', 'Treaty'),
(7, 'Lyzikan War', '2022-08-05', '2022-08-18', 'Conflict between colonies', NULL),
(10, 'Xy Skirmish', '2019-11-03', '2019-11-10', NULL, 'Victory'),
(5, 'Tundric Stand-off', '2021-03-05', NULL, 'Diplomatic standoff with natives', NULL),
(8, 'Aurorus Trade Dispute', '2021-09-15', '2021-09-18', NULL, NULL),
(11, 'Tython Clash', '2023-04-03', NULL, 'Encounter with nomadic tribes', 'Resolved'),
(12, 'Dégron Mining Dispute', '2022-02-12', '2022-02-20', NULL, 'Settlement');

/*********************
DEPARTMENT
**********************/
INSERT INTO Department (name)
VALUES
('Command'),
('Engineering'),
('Science'),
('Diplomacy'),
('Medical'),
('Security'),
('Trade'),
('Exploration'),
('Logistics'),
('Communications'),
('Research'),
('Technology');

/*********************
ROLE
**********************/
INSERT INTO Role (departmentID, name)
VALUES
(1, 'Pilot'),
(2, 'Engineer'),
(3, 'Scientist'),
(4, 'Diplomat'),
(3, 'Biologist'),
(3, 'Botanist'),
(5, 'Doctor'),
(6, 'Security Officer'),
(7, 'Trader'),
(8, 'Explorer'),
(9, 'Mechanic'),
(10, 'Comms Specialist'),
(11, 'Astrophysicist'),
(11, 'Systems Analyst');

/*********************
CREW MEMBER
**********************/
INSERT INTO CrewMember (individualID, shipID, departmentID, roleID, startDate, endDate)
VALUES
(1, 1, 1, 1, '2015-01-01', NULL),
(4, 1, 2, 2, '2016-03-10', NULL),
(3, 3, 2, 2, '2019-06-01', NULL),
(5, 3, 4, 4, '2019-06-01', NULL),
(2, 2, 3, 6, '2012-05-01', NULL),
(6, 2, 3, 5, '2013-07-15', '2020-05-12'),
(7, 5, 8, 10, '2020-06-01', NULL),
(8, 6, 6, 8, '2019-02-14', NULL),
(9, 7, 3, 3, '2020-09-01', NULL),
(10, 8, 7, 9, '2021-11-20', NULL),
(11, 9, 5, 7, '2022-04-10', NULL),
(12, 10, 10, 12, '2023-01-01', NULL),
(13, 11, 11, 13, '2023-03-01', NULL),
(1, 9, 11, 14, '2023-04-15', '2025-03-13'),
(14, 14, 2, NULL, '2025-03-02', NULL),
(15, 15, 3, NULL, '2025-05-11', NULL);

