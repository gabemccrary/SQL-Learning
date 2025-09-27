/**********************
PLANETS
**********************/
INSERT INTO Planets (PlanetID, PlanetName, StarSystem, Inhabited, LogDate, Composition)
VALUES
(1, 'Earth', 'Sol', 1, NULL, 'Terrestrial'),
(2, 'Aurorus', 'Panthera', 1, '2012-05-14', 'Terrestrial'),
(3, 'Achilles', 'Kadosh', 1, '2013-11-20', 'Terrestrial'),
(4, 'Okéanos', 'Caldrun', 1, '2015-07-07', 'Hypherian'),
(5, 'Zenith', 'Stellar Ridge', 0, '2016-02-12', 'Gas Giant'),
(6, 'Lyric', 'Tarpax', 1, '2017-09-01', 'Super-Earth'),
(7, 'Kharos', 'Aquila', 0, '2018-03-11', 'Super-Earth'),
(8, 'Dégron', 'Altair', 1, '2019-12-25', 'Hypherian'),
(9, 'Cinbrali', 'Volcanis', 1, '2020-06-30', 'Lava'),
(10, 'Gihara', 'Edani', 0, '2021-04-15', 'Gas Giant'),
(11, 'Pelora', 'Androd', 1, '2022-08-09', 'Hypherian'),
(12, 'Xyris', 'Kronos', 0, '2023-01-19', 'Ice Giant'),
(13, 'Tython', 'Celestia', 1, NULL, 'Terrestrial');

/**********************
KINDRED
**********************/
INSERT INTO Kindred (KindredID, HomePlanetID, Name, Humanoid, Sapience, AverageLifespan, Description, FirstContact)
VALUES
(1, 1, 'Human', 1, 1, 90, 'Adaptive and curious.', NULL),
(2, 2, 'Ekkluvian', 1, 1, 150, 'Advanced technology. Bioluminescent beings.', '2012-05-14'),
(3, 3, 'Cardan', 1, 1, 120, 'Metachrosis. Humanoid.', '2013-11-20'),
(4, 4, 'Aquani', 0, 1, 200, 'Amphibious ocean dwellers.', '2015-07-07'),
(5, 6, 'Lyrian', 1, 1, 100, 'Telepathic after age 45. Humanoids.', '2017-09-01'),
(6, 3, 'Khari', 0, 1, 80, 'Geo-biology. Nomadic. Radiation resistance.', '2018-03-11'),
(7, 13, 'Veyran', 1, 1, 70, 'Tall desert dwellers. Honor-shame culture.', '2019-12-25'),
(8, 9, 'Emberi', 1, 1, 95, 'Fire-resistant humanoids from volcanic regions.', '2020-06-30'),
(9, 11, 'Peloran', 1, 1, 85, 'Tropic forest dwellers. Excellent hunters.', '2022-08-09'),
(10, 12, 'Kronan', 0, 0, 50, 'Skeptical of outsiders. Not much is known.', '2023-01-19'),
(11, 4, 'Wyki', 1, 1, 110, 'Limited technology. Some live on nearby moon.', NULL);

/**********************
SHIPS
**********************/
INSERT INTO Ships (ShipID, Manufacturer, Model, ShipClass, Capacity, StartYear, EndYear)
VALUES
(1, 'Nova', 'Velox', 'EXP', 120, 2015, NULL),
(2, 'Forge', 'Infinitum', 'BAT', 300, 2012, NULL),
(3, 'Nova', 'Polaris', 'SCI', 80, 2018, NULL),
(4, 'The Guild', 'Crimson Scepter', 'TRA', 60, 2010, 2020),
(5, 'Starry', 'Horizon', 'EXP', 100, 2017, NULL),
(6, 'ZenithWorks', 'Pioneer', 'SCI', 50, 2016, NULL),
(7, 'Forge', 'Titan', 'BAT', 400, 2019, NULL),
(8, 'Celestia', 'Borialis', 'TRA', 70, 2020, NULL),
(9, 'Nova', 'Astera', 'EXP', 130, 2021, NULL),
(10, 'Forge', 'Eclipse', 'BAT', 250, 2015, NULL),
(11, 'Celestia', 'Comet', 'TRA', 90, 2018, NULL);

/**********************
ADDRESS
**********************/
INSERT INTO Address (AddressID, Number, Street, City, State, Nation, Planet)
VALUES
(1, 42, 'Orion Way', 'Kansas City', 'Missouri', 'Federated Earth', 'Earth'),
(2, 15, 'Crystal Plaza', 'Veyra', 'High Plains', 'Ekkluvian Union', 'Aurorus'),
(3, 77, 'Blade Road', 'Keznar', 'Ashen Ridge', 'Hypherian Clans', 'Achilles'),
(4, 8, 'Coral Dome', 'Tethys', 'Pelagia', 'Cardan Confederacy', 'Okéanos'),
(5, 301, 'Starfall Lane', 'Lyricon', 'North Reach', 'Lyrian Syndicate', 'Lyric'),
(6, 22, 'Iron Path', 'Tharok City', 'Lowlands', 'Tharok Tribes', 'Kharos'),
(7, 501, 'Dune Crest', 'Sandspire', 'Central Flats', 'Veyran Collective', 'Dégron'),
(8, 66, 'Lava Ridge', 'Moltara', 'South Rims', 'Cindralian Alliance', 'Cindralis'),
(9, 123, 'Emerald Way', 'Pelora Prime', 'Deepwilds', 'Peloran Hunters', 'Pelora'),
(10, 9, 'Frozen Spur', 'Tyris Hollow', 'Glacier Belt', 'Tyran Packs', 'Xyris'),
(11, 5, 'Sirocco Lane', 'Tython City', 'Desert Zone', 'Tython Confederacy', 'Tython');

/**********************
CONTACT
**********************/
INSERT INTO Contact (ContactID, IndividualID, AddressID, EmailAddress, PhoneNumber)
VALUES
(1, 1, 1, 'aurora.sol@earthling.nova', '+1-555-2200'),
(2, 2, 2, 'havokk@galactic.nova', NULL),
(3, 3, 3, NULL, '+9-555-8833'),
(4, 4, 4, 'carek56@galactic.star', '+1-555-1122'),
(5, 5, 4, 'indaya.phal@polaris.star', NULL),
(6, 6, 3, NULL, NULL),
(7, 7, 5, 'lyra.icenova@galactic.nova', '+4-555-7766'),
(8, 8, 6, 'tharos.stone@collective.star', '+5-555-3344'),
(9, 9, 7, 'veyra.desert@collective.star', NULL),
(10, NULL, 8, 'cindra.family@alliance.nova', '+3-555-5566');

/**********************
INDIVIDUALS
**********************/
INSERT INTO Individuals (IndividualID, KindredID, HomePlanetID, FirstName, LastName, EarthDOB)
VALUES
(1, 1, 1, 'Aurora', 'Sol', '1990-03-11'),
(2, 3, 3, 'Kina', 'Havok', '1985-09-25'),
(3, 2, 2, 'Fiova', 'Lahah', NULL),
(4, 1, 1, 'Carek', 'Tusk', '1988-08-14'),
(5, 4, 4, 'Indaya', 'Phal', '1975-04-20'),
(6, 3, 3, 'Réxim', 'Torr', NULL),
(7, 5, 6, 'Sira', 'Nyce', '1992-11-22'),
(8, 6, 7, 'Jericho', 'Nimbus', '1978-01-15'),
(9, 7, 8, 'Zaría', 'Dune', NULL),
(10, 8, 9, 'Cruz', 'Quesar', '1983-02-27'),
(11, 9, 11, 'Vexa', 'Dream', '1999-10-05'),
(12, 10, 12, 'Gorak', 'Pang', '1990-06-06'),
(13, 11, 13, 'Lyra', 'Sands', NULL); -- extra individual for joins

/**********************
DEPARTMENTS
**********************/
INSERT INTO Department (DepartmentID, Name)
VALUES
(1, 'Command'),
(2, 'Engineering'),
(3, 'Science'),
(4, 'Diplomacy'),
(5, 'Medical'),
(6, 'Security'),
(7, 'Trade'),
(8, 'Exploration'),
(9, 'Logistics'),
(10, 'Communications'),
(11, 'Research'); -- extra for query examples

/**********************
ROLES
**********************/
INSERT INTO Roles (RoleID, DepartmentID, Name)
VALUES
(1, 1, 'Pilot'),
(2, 2, 'Engineer'),
(3, 3, 'Scientist'),
(4, 4, 'Diplomat'),
(5, 3, 'Biologist'),
(6, 3, 'Botanist'),
(7, 5, 'Doctor'),
(8, 6, 'Security Officer'),
(9, 7, 'Trader'),
(10, 8, 'Explorer'),
(11, 9, 'Mechanic'),
(12, 10, 'Comms Specialist'),
(13, 11, 'Astrophysicist'),
(14, 11, 'Xenobiologist'); -- extra roles for query demos

/**********************
CREW MEMBERS
**********************/
INSERT INTO CrewMembers (MemberID, IndividualID, ShipID, DepartmentID, RoleID, StartDate, EndDate)
VALUES
(1, 1, 1, 1, 1, '2015-01-01', NULL),
(2, 4, 1, 2, 2, '2016-03-10', NULL),
(3, 3, 3, 2, 2, '2019-06-01', NULL),
(4, 5, 3, 4, 4, '2019-06-01', NULL),
(5, 2, 2, 3, 6, '2012-05-01', NULL),
(6, 6, 2, 3, 5, '2013-07-15', '2020-05-12'),
(7, 7, 5, 8, 10, '2018-08-01', NULL),
(8, 8, 6, 6, 8, '2019-02-14', NULL),
(9, 9, 7, 3, 3, '2020-09-01', NULL),
(10, 10, 8, 7, 9, '2021-11-20', NULL),
(11, 11, 9, 5, 7, '2022-04-10', NULL),
(12, 12, 10, 10, 12, '2023-01-01', NULL),
(13, 13, 11, 11, 13, '2023-03-01', NULL),
(14, 1, 9, 11, 14, '2023-04-15', NULL); -- extra crew for queries

/**********************
VOYAGES
**********************/
INSERT INTO Voyage (VoyageID, ShipID, OriginPlanetID, DestinationPlanetID, StartDate, EndDate, Purpose, ProjectedCost, FinalCost)
VALUES
(1, 1, 1, 2, '2018-04-01', '2018-04-10', 'Diplomacy', 1200000, 1185000),
(2, 2, 3, 5, '2019-05-12', '2019-05-20', 'Conflict', 5000000, 5600000),
(3, 3, 2, 4, '2020-06-05', '2020-06-15', 'Research', 800000, 750000),
(4, 4, 1, 1, '2015-07-01', '2015-07-07', 'Trade', 100000, NULL),
(5, 5, 6, 8, '2021-03-01', NULL, 'Exploration', 600000, NULL),
(6, 6, 7, 9, '2020-12-01', '2020-12-12', 'Science', 400000, 410000),
(7, 7, 8, 2, '2022-08-05', '2022-08-18', 'Defense', 750000, 760000),
(8, 8, 4, 3, '2021-09-15', NULL, 'Trade', 300000, NULL),
(9, 9, 11, 12, '2023-01-05', '2023-01-20', 'Exploration', 900000, 910000),
(10, 10, 12, 6, '2019-11-02', '2019-11-10', 'Military', 1200000, 1250000),
(11, 11, 13, 1, '2023-04-01', NULL, 'Research', 450000, NULL),
(12, 5, 8, 7, '2022-02-10', '2022-02-20', 'Diplomacy', 500000, 495000);

/**********************
EVALUATION
**********************/
INSERT INTO Evaluation (EvaluationID, IndividualID, EvaluatorID, EvalDate, Score, Notes)
VALUES
(1, 1, 5, '2018-04-11', 95, 'Excellent leadership during negotiations'),
(2, 4, 1, '2018-04-12', 88, 'Kept ship systems stable under stress'),
(3, 2, 6, '2019-05-21', 70, 'Aggressive tactics, mixed results'),
(4, 3, 5, '2020-06-16', 99, NULL),
(5, 7, 8, '2021-07-10', 85, 'Exploration efficiency outstanding'),
(6, 9, 10, '2022-01-05', 60, NULL),
(7, 11, 12, '2023-04-20', 92, 'Trade negotiations successful'),
(8, 5, 3, '2019-08-12', 78, NULL),
(9, 6, 2, '2018-12-30', 88, 'Science mission completion'),
(10, 8, 7, '2021-05-14', 90, 'Security maintained during conflict'),
(11, 13, 1, '2023-04-05', 82, 'Astrophysics mission evaluated'),
(12, 1, 14, '2023-04-16', 97, 'Excellent collaboration');

/**********************
DISCOVERY
**********************/
INSERT INTO Discovery (DiscoveryID, LoggerID, VoyageID, DiscoveryType, Description, LogDate)
VALUES
(1, 1, 1, 'Flora', 'New plant Kindred', '2018-04-05'),
(2, 2, 2, 'Fauna', NULL, '2019-05-15'),
(3, 3, 3, 'Geology', 'New tectonic activity', '2020-06-10'),
(4, 4, 4, 'Oceanography', NULL, '2015-07-05'),
(5, 5, 5, 'Exobiology', 'Ice-adapted insects', '2021-03-05'),
(6, 6, 6, 'Astronomy', 'New moon mapped', '2020-12-05'),
(7, 7, 7, 'Defense', NULL, '2022-08-10'),
(8, 8, 8, 'Trade', 'Dark market trading routes', '2021-09-18'),
(9, 9, 9, 'Exploration', NULL, '2023-01-10'),
(10, 10, 10, 'Astronomy', 'Dark matter disturbance', '2019-11-05'),
(11, 11, 11, 'Research', 'Ancient artifact discovered', '2023-04-02'),
(12, 12, 12, 'Science', NULL, '2022-02-15');

/**********************
CONFLICT
**********************/
INSERT INTO Conflict (ConflictID, VoyageID, ConflictName, StartDate, EndDate, Description, Outcome)
VALUES
(1, 2, 'Battle of Kenzana', '2019-05-20', NULL, 'Major fleet engagement near the gas giant.', 'Treaty'),
(2, 7, 'Lyzikan War', '2022-08-05', '2022-08-18', 'Conflict between colonies', NULL),
(3, 10, 'Xy Skirmish', '2019-11-03', '2019-11-10', NULL, 'Victory'),
(4, 5, 'Tundric Stand-off', '2021-03-05', NULL, 'Diplomatic standoff with natives', NULL),
(5, 8, 'Aurorus Trade Dispute', '2021-09-15', '2021-09-18', NULL, NULL),
(6, 11, 'Tython Clash', '2023-04-03', NULL, 'Encounter with nomadic tribes', 'Resolved'),
(7, 12, 'Dégron Mining Dispute', '2022-02-12', '2022-02-20', NULL, 'Settlement');
