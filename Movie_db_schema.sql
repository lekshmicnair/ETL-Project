-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "TMDB_Data" (
    "Movie_title" VARCHAR   NOT NULL,
    "Original_Language" VARCHAR  ,
    "Runtime" FLOAT ,
    "Release_date" DATE   ,
    CONSTRAINT "pk_TMDB_Data" PRIMARY KEY (
        "Movie_title"
     )
);

CREATE TABLE "TMDB_Score" (
    "Movie_title" VARCHAR   NOT NULL,
    "TMDB_Score" FLOAT   ,
    CONSTRAINT "pk_TMDB_Score" PRIMARY KEY (
        "Movie_title"
     )
);

CREATE TABLE "TMDB_Vote_Count" (
    "Movie_title" VARCHAR   NOT NULL,
    "Vote_Count" INT   ,
    CONSTRAINT "pk_TMDB_Vote_Count" PRIMARY KEY (
        "Movie_title"
     )
);

CREATE TABLE "IMDB_Data" (
    "Movie_title" VARCHAR   NOT NULL,
    "Budget" FLOAT   NOT NULL,
    "Gross" FLOAT   NOT NULL,
    "Country" VARCHAR   NOT NULL,
    "Company" VARCHAR   NOT NULL,
    "Director" VARCHAR   NOT NULL,
    "Star" VARCHAR   NOT NULL,
    "Rating" VARCHAR   NOT NULL,
    CONSTRAINT "pk_IMDB_Data" PRIMARY KEY (
        "Movie_title"
     )
);

CREATE TABLE "IMDB_Score" (
    "Movie_title" VARCHAR   NOT NULL,
    "IMDB_Score" Float   NOT NULL,
    CONSTRAINT "pk_IMDB_Score" PRIMARY KEY (
        "Movie_title"
     )
);

CREATE TABLE "IMDB_Vote_Count" (
    "Movie_title" VARCHAR   NOT NULL,
    "Vote_Count" INT   NOT NULL,
    CONSTRAINT "pk_IMDB_Vote_Count" PRIMARY KEY (
        "Movie_title"
     )
);

CREATE TABLE "Netflix" (
    "Movie_title" VARCHAR   NOT NULL,
    "Date_added" DATE   ,
    "Listed_in" VARCHAR   ,
    CONSTRAINT "pk_Netflix" PRIMARY KEY (
        "Movie_title"
     )
);

CREATE TABLE "Wiki_Plots" (
    "Movie_title" VARCHAR   NOT NULL,
    "Plot" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Wiki_Plots" PRIMARY KEY (
        "Movie_title"
     )
);

ALTER TABLE "TMDB_Score" ADD CONSTRAINT "fk_TMDB_Score_Movie_title" FOREIGN KEY("Movie_title")
REFERENCES "TMDB_Data" ("Movie_title");

ALTER TABLE "TMDB_Vote_Count" ADD CONSTRAINT "fk_TMDB_Vote_Count_Movie_title" FOREIGN KEY("Movie_title")
REFERENCES "TMDB_Data" ("Movie_title");

ALTER TABLE "IMDB_Score" ADD CONSTRAINT "fk_IMDB_Score_Movie_Title" FOREIGN KEY("Movie_title")
REFERENCES "IMDB_Data" ("Movie_title");

ALTER TABLE "IMDB_Vote_COunt" ADD CONSTRAINT "fk_IMDB_Vote_COunt_Movie_title" FOREIGN KEY("Movie_title")
REFERENCES "IMDB_Data" ("Movie_title");