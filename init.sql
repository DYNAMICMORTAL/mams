CREATE TABLE buses (
  bus_id SERIAL PRIMARY KEY,
  bus_number INT,
  route_id INT,
  location POINT
);

CREATE TABLE stops (
  stop_id SERIAL PRIMARY KEY,
  stop_name VARCHAR(255),
  location POINT
);

CREATE EXTENSION postgis;
SELECT PostGIS_version();
SELECT PostGIS_full_version();

-- Insert buses
INSERT INTO buses (bus_number, route_id, location) VALUES
  (101, 1, st_GeomFromText('POINT(37.7749 -122.4194)')),
  (102, 1, st_GeomFromText('POINT(37.7833 -122.4167)')),
  (103, 2, st_GeomFromText('POINT(37.7621 -122.4343)'));

-- Insert stops
INSERT INTO stops (stop_name, location) VALUES
  ('Stop A', st_GeomFromText('POINT(37.7749 -122.4194)')),
  ('Stop B', st_GeomFromText('POINT(37.7808 -122.4058)')),
  ('Stop C', st_GeomFromText('POINT(37.7604 -122.4274)'));