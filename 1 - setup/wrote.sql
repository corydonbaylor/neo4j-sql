
DROP TABLE IF EXISTS wrote CASCADE;
CREATE TABLE wrote (
  movie_id VARCHAR(255) REFERENCES Movies(id),
  person_id VARCHAR(255) REFERENCES Persons(id),
  PRIMARY KEY (movie_id, person_id)
);


INSERT INTO wrote (movie_id, person_id) VALUES
('AFewGoodMen', 'AaronS'),
('TopGun', 'JimC'),
('JerryMaguire', 'CameronC'),
('WhenHarryMetSally', 'NoraE'),
('VforVendetta', 'AndyW'),
('VforVendetta', 'LanaW'),
('SpeedRacer', 'AndyW'),
('SpeedRacer', 'LanaW'),
('SomethingsGottaGive', 'NancyM');