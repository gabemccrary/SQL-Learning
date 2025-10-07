/********************* 
PLANET
**********************/
INSERT INTO Planet (name, star, habitable, logDate, description)
VALUES
(N'Earth', N'Sun', 1, NULL, 'Terrestrial. Complex diversity of ecosystems.'),
(N'Aurorus', N'Panthera', 1, '2022-05-14 13:47:08', 'Carbon-rich planet. Mild habitability. Terrestrial.'),
(N'Achilles', N'Kadosh', 1, '2023-11-20 10:32:12', 'Desert climate. Low water presence.'),
(N'Okéanos', N'Caldrun', 1, '2025-07-07 11:12:13', '85% of surface is water. One exposed landmass.'),
(N'Zenith', N'Lux', 0, '2020-02-12 07:43:23', 'Luminous gas giant covered in storms caused by axial rotation speed.'),
(N'Lyric', N'Pax', 1, '2022-09-01 09:08:07', 'Rocky super-Earth with iron-rich core and thin atmosphere.'),
(N'Kharos', N'Aquila', 0, '2021-03-11 14:23:17', 'Former rogue planet stabilized by gravitational capture.'),
(N'Dégron', N'Altair', 1, '2020-12-25 11:14:14', 'Volatile ocean activity caused by two moons.'),
(N'Cinbrali', N'Volcanis', 1, '2020-06-30 00:12:45', 'Large amount of tectonic activity. Skies appear pink due to orange star.'),
(N'Gihara', N'Edani', 0, '2020-12-25 11:14:14', 'Gas giant. Other features unknown.'),
(N'Pelora', N'Androd', 1, '2022-08-09 14:28:37', 'Relatively small. Large polar ice caps and deserts.'),
(N'Xyris', N'Kronos', 0, '2023-01-19 16:15:14', 'Majority of landmasses are ice-covered. Volcanic vents sustain hidden ecosystems beneath the surface.'),
(N'Tython', N'Celestia', 1, '2021-03-25 20:11:14', 'High-gravity. Dense atmosphere. 30% of surface is water.'),
(N'Novara', N'X38', 1, '2022-01-02 23:17:32', 'Earth-like. Bioluminescent flora.'),
(N'Zerath', N'Draco', 0, '2021-10-25 16:14:14', 'Gas giant. Strong magnetic field.'),
(N'Lumina', N'Vega', 1, '2024-01-01 18:23:57', 'Super-Earth. Extreme temperatures.');


/*********************
SHIP
**********************/
INSERT INTO Ship (manufacturer, model, shipClass, capacity, startYear, endYear)
VALUES
('Nova', 'Velox (N-25120)', 'EXP', 120, 2022, NULL),
('Forge', 'Infinitum (F-12300)', 'BAT', 300, 2020, 2025),
('Nova', 'Polaris (N-18080)', 'SCI', 80, 2021, NULL),
('The Guild', 'Crimson Scepter (G-10060)', 'TRA', 60, 2020, 2024),
('AstroWorks', 'Expanse (A-17100)', 'EXP', 100, 2021, NULL),
('Voyager', 'Pioneer (V-18050)', 'SCI', 50, 2021, NULL),
('Forge', 'Titan (F-19400)', 'BAT', 400, 2020, NULL),
('Celestia', 'Borealis (C-30070)', 'TRA', 70, 2020, NULL),
('Nova', 'Astera (N-21130)', 'EXP', 130, 2021, NULL),
('Forge', 'Eclipse (F-15250)', 'BAT', 250, 2025, NULL),
('Celestia', 'Comet IV (C-18090)', 'TRA', 90, 2020, NULL),
('StellarWorks', 'Colossus (S-22600)', 'EXP', 600, 2022, NULL),
('Forge', 'Leviathan (F-20900)', 'BAT', 900, 2020, NULL),
('Nova', 'Aurora (N-23450)', 'SCI', 450, 2023, NULL);

/*********************
VOYAGE
**********************/
INSERT INTO Voyage (shipID, originPlanetID, destinationPlanetID, startDate, endDate, purpose, projectedCost, finalCost)
VALUES
(12, 1, 2, '2023-04-01', '2023-06-10', 'Diplomacy', 1200000, 1185000),
(2, 3, 5, '2021-05-12', '2021-07-20', 'Diplomacy', 5000000, 5600000),
(3, 2, 2, '2021-07-05', '2022-01-15', 'Research', 800000, 750000),
(4, 4, 1, '2024-02-01', NULL, 'Trade', 100000, NULL),
(1, 1, 2, '2024-04-01', '2024-07-10', 'Research', 1200000, 1185000),
(5, 6, 8, '2025-03-01', NULL, 'Supplies', 600000, NULL),
(6, 7, 9, '2021-12-01', '2022-02-12', 'Research', 400000, 410000),
(7, 8, 2, '2021-08-05', '2021-12-18', 'Diplomacy', 750000, 760000),
(8, 4, 3, '2025-09-15', NULL, 'Trade', 300000, NULL),
(1, 1, 2, '2022-04-01', '2022-07-10', 'Trade', 1200000, 1185000),
(5, 11, 12, '2022-01-05', '2023-01-20', 'Research', 900000, 910000),
(10, 12, 6, '2020-11-02', '2021-01-10', 'Military', 1200000, 1250000),
(11, 13, 1, '2025-04-01', NULL, 'Supplies', 450000, NULL),
(1, 8, 7, '2022-02-10', '2023-02-20', 'Research', 500000, 495000),
(14, 14, 15, '2025-08-13', NULL, 'Supplies', 2000000, NULL),
(8, 15, 16, '2024-05-10', '2025-05-20', 'Military', 5000000, 4800000),
(6, 16, 14, '2023-06-01', '2025-06-15', 'Research', 750000, 700000),
(1, 2, 3, '2024-01-05', '2024-02-02', 'Diplomacy', 1200000, 1150000),
(6, 3, 4, '2024-03-10', '2024-03-25', 'Research', 800000, 790000),
(1, 5, 2, '2024-04-01', '2024-05-01', 'Research', 2000000, 1985000);

/*********************
BIOTYPE
**********************/
INSERT INTO Biotype (homePlanetID, name, sapient, averageLifespan, description, firstContact)
VALUES
(1, 'Human', 1, 90, 'Bipedal. High neural plasticity.', NULL),
(2, 'Ekkluvian', 1, 150, 'Bioluminescent skin. Nocturnal vision.', '2022-05-14'),
(14, 'Chame', 1, 120, 'Chromatophores enable rapid color change.', '2023-11-20'),
(4, 'Aquani', 0, 200, 'Gilled vertebrates. Dual aquatic–terrestrial respiration.', '2025-07-07'),
(6, 'Lyrian', 1, 100, 'Humanoid morphology. Telepathic abilities that begin at age 45.', '2022-09-01'),
(3, 'Khari', 0, 80, 'Skin has geode-like appearance. Cellular resistance to radiation.', '2024-03-11'),
(3, 'Veyran', 1, 70, 'Elongated limbs. Humanoids adapted for arid, high-solar environments.', '2023-11-20'),
(9, 'Emberi', 1, 95, 'Thermoresistant to volcanic heat.', '2021-06-30'),
(11, 'Peloran', 1, 85, 'Strong musculature. Arboreal adaptations.', '2022-08-09'),
(12, 'Kronan', 0, 50, 'Feline morphology. Large. High fast-twitch muscle density.', '2023-01-19'),
(14, 'Wyki', 1, 110, 'Small-bodied bipeds.', '2025-07-07'),
(NULL, 'Zorvian', 0, 120, 'Tentacled amphibians with fragile exoskeleton.', NULL),
(15, 'Lumini', 1, 85, 'Bioluminescent skin. Cold-blooded metabolism.', '2024-02-02');

/*********************
INDIVIDUAL
**********************/
INSERT INTO Individual (biotypeID, homePlanetID, firstName, lastName, earthDOB)
VALUES
(1, 1, N'Aurora', N'Sol', '1990-03-11'),
(3, 3, N'Kina', N'Havok', '1985-09-25'),
(2, 2, N'Fiova', N'Lahah', NULL),
(NULL, 1, N'Carek', N'Tusk', '1988-08-14'),
(4, 4, N'Indaya', N'Phal', '1975-04-20'),
(3, 3, N'Réxim', N'Torr', NULL),
(NULL, 6, N'Sira', N'Nyce', '1992-11-22'),
(6, 7, N'Jericho', N'Nimbus', '1978-01-15'),
(7, 8, N'Zaría', N'Dune', NULL),
(8, 9, N'Cruz', N'Quasar', '1983-02-27'),
(9, 11, N'Vexa', N'Dream', '1999-10-05'),
(10, 12, N'Gorak', N'Pang', '1990-06-06'),
(11, 13, N'Lyra', N'Sands', NULL),
(NULL, 14, N'Orin', N'Bell', '2000-01-01'),
(13, 15, N'Luma', N'Bright', '1995-07-07'),
(NULL, 2, N'Heaven', N'Pax', '1993-07-21'),
(5, 5, N'Simini', N'Korr', '1987-11-12'),
(NULL, 8, N'Kona', N'Invictus', NULL),
(12, 12, N'Ryndon', N'Pangi', '1991-03-15'),
(NULL, 14, N'Lumi', N'Zect', '1994-09-09');

/*********************
ADDRESS
**********************/
INSERT INTO Address (number, street, city, state, nation, planet)
VALUES
(42, N'Constellation Blvd', N'Kansas City', N'Missouri', N'USA', N'Earth'),
(15, N'Twinkle Blvd', N'Veyra', N'High Plains', N'Ekkluvian Union', N'Aurorus'),
(777, N'Starry Rd', N'Keznar', N'Ashen Ridge', N'Hypherian Clans', N'Achilles'),
(801, N'Astro Wy', N'Tethys', N'Pelagia', N'Orin', N'Okéanos'),
(301, N'Stardust Ln', N'Lyricon', N'North Reach', N'Luminaria', N'Lyric'),
(22, N'Cosmic Cir', N'Tharok City', N'Lowlands', N'Tharok Tribes', N'Kharos'),
(501, N'Asteroid Dr', N'Sandspire', N'Central Flats', N'Veyran Collective', N'Dégron'),
(66, N'Galaxy Ridge Dr', N'Moltara', N'South Rims', N'Cindralian Alliance', N'Cinbrali'),
(123, N'Emerald Ave', N'Pelora Prime', N'Deepwilds', N'Peloran States', N'Pelora'),
(9, N'Nova St', N'Tyris Hollow', N'Glacier Belt', N'Crucis', N'Xyris'),
(5, N'Lunar Ln', N'Tython City', N'Desert Zone', N'Mak', N'Tython');

/*********************
CONTACT
**********************/
INSERT INTO Contact (individualID, addressID, emailAddress, phoneNumber)
VALUES
(1, 1, N'aurora.sol@earthling.nova', N'+1-555-2200'),
(2, 2, N'havokk@galactic.nova', NULL),
(3, 3, NULL, N'+9-555-8833'),
(4, 4, N'carek56@galactic.star', N'+1-555-1122'),
(5, 4, N'indaya.phal@polaris.star', NULL),
(6, 3, NULL, NULL),
(7, 5, N'nyces@galactic.nova', N'+4-555-7766'),
(8, 6, N'jnimbus@polaris.star', N'+5-555-3344'),
(9, 7, N'zaria.dune@galactic.star', NULL),
(10, 8, N'quesarc@stellar.nova', N'+3-555-5566'),
(14, 9, N'orin.bell@stellar.nova', N'+2-555-1122'),
(15, 10, N'luma.bright@galactic.star', N'+2-555-3344');

/*********************
EVALUATION
**********************/
INSERT INTO Evaluation (individualID, evaluatorID, evalDate, score, notes)
VALUES
(1, 5, '2022-05-01', 95, 'Excellent leadership during early research missions'),
(4, 1, '2022-08-10', 88, 'Kept ship systems stable under stress'),
(2, 7, '2020-06-15', 70, 'Aggressive tactics, mixed results'),
(3, 6, '2021-08-01', 99, 'Outstanding scientific analysis'),
(7, 8, '2022-09-12', 85, 'Exploration efficiency outstanding'),
(9, 10, '2021-05-20', 60, 'Observation and reconnaissance evaluated'),
(11, 12, '2025-05-10', 92, 'Research mission successfully completed'),
(5, 3, '2021-11-05', 78, 'Exobiology fieldwork well conducted'),
(6, 2, '2021-01-20', 88, 'Astronomy mission completion'),
(8, 7, '2021-12-15', 90, 'Security maintained during exploration'),
(13, 11, '2023-04-10', 82, 'Astrophysics mission evaluated'),
(1, 14, '2023-10-01', 97, 'Excellent collaboration on crew coordination'),
(14, 2, '2023-05-20', 55, 'Needs improvement in technical duties'),
(15, 2, '2023-12-05', 100, 'Outstanding performance in research'),
(1, 2, '2023-06-15', 88, 'Steady work in command operations');

/*********************
DISCOVERY
**********************/
INSERT INTO Discovery (loggerID, voyageID, discoveryType, description, logDate)
VALUES
(6, 1, 'Astronomy', 'New plant Kindred', '2022-04-02'),
(2, 2, 'Fauna', NULL, '2021-05-13'),
(3, 3, 'Geology', 'New tectonic activity', '2021-07-06'),
(4, 4, 'Oceanography', NULL, '2024-02-02'),
(5, 5, 'Exobiology', 'Ice-adapted insects', '2025-03-02'),
(6, 6, 'Astronomy', 'New moon mapped', '2021-12-02'),
(7, 7, 'Defense', NULL, '2022-08-10'),
(1, 7, 'Trade', 'Dark market trading routes', '2025-09-16'),
(9, 9, 'Exploration', NULL, '2021-04-02'),
(10, 10, 'Astronomy', 'Dark matter disturbance', '2020-11-03'),
(11, 11, 'Research', 'Ancient artifact discovered', '2025-04-02'),
(12, 12, 'Science', NULL, '2022-02-15');


/*********************
CONFLICT
**********************/
INSERT INTO Conflict (voyageID, name, startDate, endDate, description, outcome)
VALUES
(2, 'Battle of Kenzana', '2021-05-13', NULL, 'Major fleet engagement near the gas giant.', 'Treaty'),
(7, 'Lyzikan War', '2022-08-05', '2022-08-18', 'Conflict between colonies', NULL),
(10, 'Xy Skirmish', '2020-11-03', '2020-11-10', NULL, 'Victory'),
(5, 'Tundric Stand-off', '2025-03-02', NULL, 'Diplomatic standoff with natives', NULL),
(8, 'Aurorus Trade Dispute', '2025-09-16', '2025-09-18', NULL, NULL),
(11, 'Tython Clash', '2025-04-02', NULL, 'Encounter with nomadic tribes', 'Resolved'),
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
('Nutrition'),
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
(8, 'Chef'),
(9, 'Mechanic'),
(10, 'Comms Specialist'),
(3, 'Astrophysicist'),
(12, 'Systems Analyst');

/*********************
CREW MEMBER
**********************/
INSERT INTO CrewMember (individualID, shipID, departmentID, roleID, startDate, endDate)
VALUES
(1, 1, 1, 1, '2022-02-15', NULL),
(4, 1, 2, 2, '2022-06-10', NULL),
(3, 3, 3, 3, '2021-03-20', NULL),
(5, 3, 3, 5, '2021-09-12', NULL),
(2, 2, 7, 7, '2020-04-01', NULL),
(6, 2, 3, 13, '2020-08-15', '2021-12-31'),
(7, 5, 8, 10, '2021-05-05', NULL),
(8, 6, 6, 8, '2021-09-01', NULL),
(9, 7, 3, 3, '2020-11-20', NULL),
(10, 8, 7, 9, '2021-12-10', NULL),
(11, 9, 3, 13, '2022-05-01', NULL),
(12, 10, 12, 12, '2025-06-15', NULL),
(13, 11, 3, 3, '2023-03-10', NULL),
(1, 9, 3, 3, '2023-09-01', '2025-03-13'),
(14, 14, 2, 2, '2023-04-20', NULL),
(15, 14, 3, 5, '2023-11-05', NULL);




