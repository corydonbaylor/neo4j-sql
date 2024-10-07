
DROP TABLE IF EXISTS Acted_In CASCADE;
CREATE TABLE Acted_In (
  movie_id VARCHAR(255) REFERENCES Movies(id),
  person_id VARCHAR(255) REFERENCES Persons(id),
  roles TEXT[], -- Consider using ENUM if roles are limited
  PRIMARY KEY (movie_id, person_id)
);


INSERT INTO Acted_In (movie_id, person_id, roles) VALUES
('TheMatrix', 'Keanu', ARRAY['Neo']),
('TheMatrix', 'Carrie', ARRAY['Trinity']),
('TheMatrix', 'Laurence', ARRAY['Morpheus']),
('TheMatrix', 'Hugo', ARRAY['Agent Smith']),
('TheMatrix', 'Emil', ARRAY['Emil']),
('TheMatrixReloaded', 'Keanu', ARRAY['Neo']),
('TheMatrixReloaded', 'Carrie', ARRAY['Trinity']),
('TheMatrixReloaded', 'Laurence', ARRAY['Morpheus']),
('TheMatrixReloaded', 'Hugo', ARRAY['Agent Smith']),
('TheMatrixRevolutions', 'Keanu', ARRAY['Neo']),
('TheMatrixRevolutions', 'Carrie', ARRAY['Trinity']),
('TheMatrixRevolutions', 'Laurence', ARRAY['Morpheus']),
('TheMatrixRevolutions', 'Hugo', ARRAY['Agent Smith']),
('TheDevilsAdvocate', 'Keanu', ARRAY['Kevin Lomax']),
('TheDevilsAdvocate', 'Charlize', ARRAY['Mary Ann Lomax']),
('TheDevilsAdvocate', 'Al', ARRAY['John Milton']),
('AFewGoodMen', 'TomC', ARRAY['Lt. Daniel Kaffee']),
('AFewGoodMen', 'JackN', ARRAY['Col. Nathan R. Jessup']),
('AFewGoodMen', 'DemiM', ARRAY['Lt. Cdr. JoAnne Galloway']),
('AFewGoodMen', 'KevinB', ARRAY['Capt. Jack Ross']),
('AFewGoodMen', 'KieferS', ARRAY['Lt. Jonathan Kendrick']),
('AFewGoodMen', 'NoahW', ARRAY['Cpl. Jeffrey Barnes']),
('AFewGoodMen', 'CubaG', ARRAY['Cpl. Carl Hammaker']),
('AFewGoodMen', 'KevinP', ARRAY['Lt. Sam Weinberg']),
('AFewGoodMen', 'JTW', ARRAY['Lt. Col. Matthew Andrew Markinson']),
('AFewGoodMen', 'JamesM', ARRAY['Pfc. Louden Downey']),
('AFewGoodMen', 'ChristopherG', ARRAY['Dr. Stone']),
('AFewGoodMen', 'AaronS', ARRAY['Man in Bar']),
('TopGun', 'TomC', ARRAY['Maverick']),
('TopGun', 'KellyM', ARRAY['Charlie']),
('TopGun', 'ValK', ARRAY['Iceman']),
('TopGun', 'AnthonyE', ARRAY['Goose']),
('TopGun', 'TomS', ARRAY['Viper']),
('TopGun', 'MegR', ARRAY['Carole']),
('JerryMaguire', 'TomC', ARRAY['Jerry Maguire']),
('JerryMaguire', 'CubaG', ARRAY['Rod Tidwell']),
('JerryMaguire', 'ReneeZ', ARRAY['Dorothy Boyd']),
('JerryMaguire', 'KellyP', ARRAY['Avery Bishop']),
('JerryMaguire', 'JerryO', ARRAY['Frank Cushman']),
('JerryMaguire', 'JayM', ARRAY['Bob Sugar']),
('JerryMaguire', 'BonnieH', ARRAY['Laurel Boyd']),
('JerryMaguire', 'ReginaK', ARRAY['Marcee Tidwell']),
('JerryMaguire', 'JonathanL', ARRAY['Ray Boyd']),
('StandByMe', 'WilW', ARRAY['Gordie Lachance']),
('StandByMe', 'RiverP', ARRAY['Chris Chambers']),
('StandByMe', 'JerryO', ARRAY['Vern Tessio']),
('StandByMe', 'CoreyF', ARRAY['Teddy Duchamp']),
('StandByMe', 'JohnC', ARRAY['Denny Lachance']),
('StandByMe', 'KieferS', ARRAY['Ace Merrill']),
('StandByMe', 'MarshallB', ARRAY['Mr. Lachance']),
('AsGoodAsItGets', 'JackN', ARRAY['Melvin Udall']),
('AsGoodAsItGets', 'HelenH', ARRAY['Carol Connelly']),
('AsGoodAsItGets', 'GregK', ARRAY['Simon Bishop']),
('AsGoodAsItGets', 'CubaG', ARRAY['Frank Sachs']),
('WhatDreamsMayCome', 'Robin', ARRAY['Chris Nielsen']),
('WhatDreamsMayCome', 'CubaG', ARRAY['Albert Lewis']),
('WhatDreamsMayCome', 'AnnabellaS', ARRAY['Annie Collins-Nielsen']),
('WhatDreamsMayCome', 'MaxS', ARRAY['The Tracker']),
('WhatDreamsMayCome', 'WernerH', ARRAY['The Face']),
('SnowFallingonCedars', 'EthanH', ARRAY['Ishmael Chambers']),
('SnowFallingonCedars', 'RickY', ARRAY['Kazuo Miyamoto']),
('SnowFallingonCedars', 'MaxS', ARRAY['Nels Gudmundsson']),
('SnowFallingonCedars', 'JamesC', ARRAY['Judge Fielding']),
('YouveGotMail', 'TomH', ARRAY['Joe Fox']),
('YouveGotMail', 'MegR', ARRAY['Kathleen Kelly']),
('YouveGotMail', 'GregK', ARRAY['Frank Navasky']),
('YouveGotMail', 'ParkerP', ARRAY['Patricia Eden']),
('YouveGotMail', 'DaveC', ARRAY['Kevin Jackson']),
('YouveGotMail', 'SteveZ', ARRAY['George Pappas']),
('SleeplessInSeattle', 'TomH', ARRAY['Sam Baldwin']),
('SleeplessInSeattle', 'MegR', ARRAY['Annie Reed']),
('SleeplessInSeattle', 'RitaW', ARRAY['Suzy']),
('SleeplessInSeattle', 'BillPull', ARRAY['Walter']),
('SleeplessInSeattle', 'VictorG', ARRAY['Greg']),
('SleeplessInSeattle', 'RosieO', ARRAY['Becky']),
('JoeVersustheVolcano', 'TomH', ARRAY['Joe Banks']),
('JoeVersustheVolcano', 'MegR', ARRAY['DeDe', 'Angelica Graynamore', 'Patricia Graynamore']),
('JoeVersustheVolcano', 'Nathan', ARRAY['Baw']),
('WhenHarryMetSally', 'BillyC', ARRAY['Harry Burns']),
('WhenHarryMetSally', 'MegR', ARRAY['Sally Albright']),
('WhenHarryMetSally', 'CarrieF', ARRAY['Marie']),
('WhenHarryMetSally', 'BrunoK', ARRAY['Jess']),
('ThatThingYouDo', 'TomH', ARRAY['Mr. White']),
('ThatThingYouDo', 'LivT', ARRAY['Faye Dolan']),
('ThatThingYouDo', 'Charlize', ARRAY['Tina']),
('TheReplacements', 'Keanu', ARRAY['Shane Falco']),
('TheReplacements', 'Brooke', ARRAY['Annabelle Farrell']),
('TheReplacements', 'Gene', ARRAY['Jimmy McGinty']),
('TheReplacements', 'Orlando', ARRAY['Clifford Franklin']),
('RescueDawn', 'MarshallB', ARRAY['Admiral']),
('RescueDawn', 'ChristianB', ARRAY['Dieter Dengler']),
('RescueDawn', 'ZachG', ARRAY['Squad Leader']),
('RescueDawn', 'SteveZ', ARRAY['Duane']),
('TheBirdcage', 'Robin', ARRAY['Armand Goldman']),
('TheBirdcage', 'Nathan', ARRAY['Albert Goldman']),
('TheBirdcage', 'Gene', ARRAY['Sen. Kevin Keeley']),
('Unforgiven', 'RichardH', ARRAY['English Bob']),
('Unforgiven', 'ClintE', ARRAY['Bill Munny']),
('Unforgiven', 'Gene', ARRAY['Little Bill Daggett']),
('JohnnyMnemonic', 'Keanu', ARRAY['Johnny Mnemonic']),
('JohnnyMnemonic', 'Takeshi', ARRAY['Takahashi']),
('JohnnyMnemonic', 'Dina', ARRAY['Jane']),
('JohnnyMnemonic', 'IceT', ARRAY['J-Bone']),
('CloudAtlas', 'TomH', ARRAY['Zachry', 'Dr. Henry Goose', 'Isaac Sachs', 'Dermot Hoggins']),
('CloudAtlas', 'Hugo', ARRAY['Bill Smoke', 'Haskell Moore', 'Tadeusz Kesselring', 'Nurse Noakes', 'Boardman Mephi', 'Old Georgie']),
('CloudAtlas', 'HalleB', ARRAY['Luisa Rey', 'Jocasta Ayrs', 'Ovid', 'Meronym']),
('CloudAtlas', 'JimB', ARRAY['Vyvyan Ayrs', 'Captain Molyneux', 'Timothy Cavendish']),
('TheDaVinciCode', 'TomH', ARRAY['Dr. Robert Langdon']),
('TheDaVinciCode', 'IanM', ARRAY['Sir Leight Teabing']),
('TheDaVinciCode', 'AudreyT', ARRAY['Sophie Neveu']),
('TheDaVinciCode', 'PaulB', ARRAY['Silas']),
('VforVendetta', 'Hugo', ARRAY['V']),
('VforVendetta', 'NatalieP', ARRAY['Evey Hammond']),
('VforVendetta', 'StephenR', ARRAY['Eric Finch']),
('VforVendetta', 'JohnH', ARRAY['High Chancellor Adam Sutler']),
('VforVendetta', 'BenM', ARRAY['Dascomb']),
('SpeedRacer', 'EmileH', ARRAY['Speed Racer']),
('SpeedRacer', 'JohnG', ARRAY['Pops']),
('SpeedRacer', 'SusanS', ARRAY['Mom']),
('SpeedRacer', 'MatthewF', ARRAY['Racer X']),
('SpeedRacer', 'ChristinaR', ARRAY['Trixie']),
('SpeedRacer', 'Rain', ARRAY['Taejo Togokahn']),
('SpeedRacer', 'BenM', ARRAY['Cass Jones']),
('NinjaAssassin', 'Rain', ARRAY['Raizo']),
('NinjaAssassin', 'NaomieH', ARRAY['Mika Coretti']),
('NinjaAssassin', 'RickY', ARRAY['Takeshi']),
('NinjaAssassin', 'BenM', ARRAY['Ryan Maslow']),
('TheGreenMile', 'TomH', ARRAY['Paul Edgecomb']),
('TheGreenMile', 'MichaelD', ARRAY['John Coffey']),
('TheGreenMile', 'DavidM', ARRAY['Brutus Howell']),
('TheGreenMile', 'BonnieH', ARRAY['Jan Edgecomb']),
('TheGreenMile', 'JamesC', ARRAY['Warden Hal Moores']),
('TheGreenMile', 'SamR', ARRAY['Wharton']),
('TheGreenMile', 'GaryS', ARRAY['Burt Hammersmith']),
('TheGreenMile', 'PatriciaC', ARRAY['Melinda Moores']),
('FrostNixon', 'FrankL', ARRAY['Richard Nixon']),
('FrostNixon', 'MichaelS', ARRAY['David Frost']),
('FrostNixon', 'KevinB', ARRAY['Jack Brennan']),
('FrostNixon', 'OliverP', ARRAY['Bob Zelnick']),
('FrostNixon', 'SamR', ARRAY['James Reston, Jr.']),
('Hoffa', 'JackN', ARRAY['Hoffa']),
('Hoffa', 'DannyD', ARRAY['Robert Ciaro']),
('Hoffa', 'JTW', ARRAY['Frank Fitzsimmons']),
('Hoffa', 'JohnR', ARRAY['Peter Connelly']),
('Apollo13', 'TomH', ARRAY['Jim Lovell']),
('Apollo13', 'KevinB', ARRAY['Jack Swigert']),
('Apollo13', 'EdH', ARRAY['Gene Kranz']),
('Apollo13', 'BillPax', ARRAY['Fred Haise']),
('Apollo13', 'GaryS', ARRAY['Ken Mattingly']),
('Twister', 'BillPax', ARRAY['Bill Harding']),
('Twister', 'HelenH', ARRAY['Dr. Jo Harding']),
('Twister', 'ZachG', ARRAY['Eddie']),
('Twister', 'PhilipH', ARRAY['Dustin Davis']),
('CastAway', 'TomH', ARRAY['Chuck Noland']),
('CastAway', 'HelenH', ARRAY['Kelly Frears']),
('OneFlewOvertheCuckoosNest', 'JackN', ARRAY['Randle McMurphy']),
('OneFlewOvertheCuckoosNest', 'DannyD', ARRAY['Martini']),
('SomethingsGottaGive', 'JackN', ARRAY['Harry Sanborn']),
('SomethingsGottaGive', 'DianeK', ARRAY['Erica Barry']),
('SomethingsGottaGive', 'Keanu', ARRAY['Julian Mercer']),
('BicentennialMan', 'Robin', ARRAY['Andrew Marin']),
('BicentennialMan', 'OliverP', ARRAY['Rupert Burns']),
('CharlieWilsonsWar', 'TomH', ARRAY['Rep. Charlie Wilson']),
('CharlieWilsonsWar', 'JuliaR', ARRAY['Joanne Herring']),
('CharlieWilsonsWar', 'PhilipH', ARRAY['Gust Avrakotos']),
('ThePolarExpress', 'TomH', ARRAY['Hero Boy', 'Father', 'Conductor', 'Hobo', 'Scrooge', 'Santa Claus']),
('ALeagueofTheirOwn', 'TomH', ARRAY['Jimmy Dugan']),
('ALeagueofTheirOwn', 'GeenaD', ARRAY['Dottie Hinson']),
('ALeagueofTheirOwn', 'LoriP', ARRAY['Kit Keller']),
('ALeagueofTheirOwn', 'RosieO', ARRAY['Doris Murphy']),
('ALeagueofTheirOwn', 'Madonna', ARRAY['Mae Mordabito']),
('ALeagueofTheirOwn', 'BillPax', ARRAY['Bob Hinson']);