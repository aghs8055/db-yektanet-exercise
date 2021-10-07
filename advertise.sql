CREATE DATABASE advertise;

USE advertise;

CREATE TABLE advertiser(
	id INT NOT NULL UNIQUE,
    name VARCHAR (20) NOT NULL,
    clicks INT NOT NULL DEFAULT 0,
    views INT NOT NULL DEFAULT 0,
    PRIMARY KEY (id)
);

CREATE TABLE ad(
	id INT NOT NULL UNIQUE,
    title VARCHAR (20) NOT NULL,
    img_url VARCHAR (200) NOT NULL,
    link VARCHAR (200),
    clicks INT NOT NULL DEFAULT 0,
    views INT NOT NULL DEFAULT 0,
    advertiser_id INT NOT NULL REFERENCES advertiser (id) ON DELETE CASCADE,
    PRIMARY KEY (id)
);