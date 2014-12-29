CREATE KEYSPACE IF NOT EXISTS Tdrive  WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };
use Tdrive;

CREATE TABLE IF NOT EXISTS Tdrive.track (
         track_id uuid PRIMARY KEY,
         time timestamp,
         longitude float, 
         latitude float);
		 
CREATE TABLE IF NOT EXISTS Tdrive.drive_car (
  car_id int,
  time timestamp,
  rec_id uuid,
  PRIMARY KEY (car_id, time)
) WITH COMPACT STORAGE;