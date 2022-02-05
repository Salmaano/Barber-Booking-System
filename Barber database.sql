--
-- File generated with SQLiteStudio v3.3.3 on Sat Feb 5 12:36:35 2022
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: appointments
CREATE TABLE appointments (
    customer_id INTEGER NOT NULL,
    start_time  TIME    NOT NULL,
    end_time    TIME    NOT NULL,
    date        DATE    NOT NULL,
    PRIMARY KEY (
        customer_id
    ),
    FOREIGN KEY (
        customer_id
    )
    REFERENCES Customer (id),
    FOREIGN KEY (
        date
    )
    REFERENCES time_slots (date),
    FOREIGN KEY (
        start_time
    )
    REFERENCES time_slots (start_time),
    FOREIGN KEY (
        end_time
    )
    REFERENCES time_slots (end_time) 
);


-- Table: customer
CREATE TABLE customer (
    id         INTEGER NOT NULL,
    first_name TEXT    NOT NULL,
    last_name  TEXT    NOT NULL,
    phone_num  INTEGER NOT NULL,
    PRIMARY KEY (
        id
    )
);


-- Table: time_slots
CREATE TABLE time_slots (
    date         DATE    NOT NULL,
    start_time   TIME    NOT NULL,
    end_time     TIME    NOT NULL,
    availability BOOLEAN NOT NULL,
    PRIMARY KEY (
        date,
        start_time,
        end_time
    )
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
