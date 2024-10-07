
DROP TABLE IF EXISTS produced CASCADE;
CREATE TABLE produced (
  movie_id VARCHAR(255) REFERENCES Movies(id),
  person_id VARCHAR(255) REFERENCES Persons(id),
  PRIMARY KEY (movie_id, person_id)
);


INSERT INTO produced (movie_id, person_id) VALUES
('TheMatrix', 'JoelS'),
('TheMatrixReloaded', 'JoelS'),
('TheMatrixRevolutions', 'JoelS'),
('JerryMaguire', 'CameronC'),
('WhenHarryMetSally', 'RobR'),
('WhenHarryMetSally', 'NoraE'),
('VforVendetta', 'AndyW'),
('VforVendetta', 'LanaW'),
('VforVendetta', 'JoelS'),
('SpeedRacer', 'JoelS'),
('NinjaAssassin', 'AndyW'),
('NinjaAssassin', 'LanaW'),
('NinjaAssassin', 'JoelS'),
('SomethingsGottaGive', 'NancyM');