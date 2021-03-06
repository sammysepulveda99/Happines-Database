-- ETL Project: Happiness Database
-- Table Creation

-- 1. Drop tables if they already exist
DROP TABLE IF EXISTS countries;
DROP TABLE IF EXISTS regions;
DROP TABLE IF EXISTS happiness;
DROP TABLE IF EXISTS health;
DROP TABLE IF EXISTS sustainability;
DROP TABLE IF EXISTS economy;

--2.Create tables and set constraints
CREATE TABLE "countries" (
    "country_id" VARCHAR(3)   NOT NULL,
    "country_name" VARCHAR(50)   NOT NULL,
    "population" FLOAT   NOT NULL,
    "region_id" VARCHAR(10)   NOT NULL,
    CONSTRAINT "pk_countries" PRIMARY KEY (
        "country_id"
     )
);

CREATE TABLE "regions" (
    "region_id" VARCHAR(10)    NOT NULL,
    "region_name" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_regions" PRIMARY KEY (
        "region_id"
     )
);

CREATE TABLE "happiness" (
    "country_id" VARCHAR(3)   NOT NULL,
    "happiness_index" FLOAT   NOT NULL,
    "social_support" FLOAT   NOT NULL,
    "freedom" FLOAT   NOT NULL
);

CREATE TABLE "health" (
    "country_id" VARCHAR(3)   NOT NULL,
    "healthy_life_exp" FLOAT
);

CREATE TABLE "sustainability" (
    "country_id" VARCHAR(3)   NOT NULL,
    "renewable_energy" FLOAT,
    "access_electricity" FLOAT,
    "access_water" FLOAT 
);

CREATE TABLE "economy" (
    "country_id" VARCHAR(3)   NOT NULL,
    "gdp" FLOAT,
    "ppp" FLOAT,
    "unemployment" FLOAT,
    "income_per_capita" FLOAT
);

--3.Check if tables were created
SELECT * FROM countries;
SELECT * FROM regions;
SELECT * FROM happiness;
SELECT * FROM health;
SELECT * FROM sustainability;
SELECT * FROM economy;
