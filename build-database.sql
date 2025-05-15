-- Build Database

-- Create Station Table
CREATE TABLE Station(
    id INTEGER PRIMARY KEY,
    station INTEGER UNIQUE,
    location VARCHAR,
    lat REAL,
    long REAL
);

-- Import CSV into Station
COPY Station FROM 'data/processed/station.csv' (HEADER TRUE, nullstr 'NA');

-- Verify
SELECT * FROM Station;

-- Create Tow Table
CREATE TABLE Tow(
    date DATE,
    station INTEGER,
    tow INTEGER,
    time TIMESTAMP,
    tide INTEGER,
    bottom_depth INTEGER,
    cable_out INTEGER,
    duration INTEGER,
    net_meter_serial INTEGER,
    net_meter_start INTEGER,
    net_meter_end INTEGER,
    net_meter_check INTEGER,
    PRIMARY KEY (date, station),
    FOREIGN KEY (station) REFERENCES Station(station)
);

-- Import CSV into Tow
COPY Tow FROM 'data/processed/tow.csv' (HEADER TRUE, nullstr 'NA');

-- Verify
SELECT * FROM Tow;

-- Create Fish Table
CREATE TABLE Fish(
    fish_code INTEGER PRIMARY KEY,
    taxa VARCHAR
);

-- Import CSV into Fish
COPY Fish FROM 'data/processed/fish.csv' (HEADER TRUE, nullstr 'NA');

-- Verify
SELECT * FROM Fish;

-- Create Length Table
CREATE TABLE Length(
    date DATE,
    station INTEGER,
    tow INTEGER,
    fish_code INTEGER,
    length INTEGER,
    entry_order INTEGER PRIMARY KEY,
    yolk_sak_or_oil_present BOOLEAN,
    FOREIGN KEY (fish_code) REFERENCES Fish(fish_code),
    FOREIGN KEY (date, station) REFERENCES Tow(date, station)
);

-- Import CSV into Length
COPY Length FROM 'data/processed/length.csv' (HEADER TRUE, nullstr 'NA');

-- Verify
SELECT * FROM Length;

-- Create Water Table
CREATE TABLE Water(
    survey INTEGER,
    date DATE,
    station INTEGER,
    top_temp REAL,
    top_ec INTEGER,
    bottom_ec INTEGER,
    secchi INTEGER,
    fnu REAL,
    ntu REAL,
    start_lat VARCHAR,
    start_lat_deg INTEGER,
    start_lat_min INTEGER,
    start_lat_sec REAL,
    start_long VARCHAR,
    start_long_deg INTEGER,
    start_long_min INTEGER,
    start_long_sec REAL,
    end_lat VARCHAR,
    end_lat_deg INTEGER,
    end_lat_min INTEGER,
    end_lat_sec REAL,
    end_long VARCHAR,
    end_long_deg INTEGER,
    end_long_min INTEGER,
    end_long_sec REAL,
    PRIMARY KEY (survey, date, station),
    FOREIGN KEY (date, station) REFERENCES Tow(date, station)
);

-- Import CSV into Water
COPY Water FROM 'data/processed/water.csv' (HEADER TRUE, nullstr 'NA');

-- Verify
SELECT * FROM Water;