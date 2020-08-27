-- Movies in IMDB and TMDB data sources for movies made in USA
Select imdb."Movie_title", tmdb."Release_date", imdb."Budget",imdb."Gross", imdb."Director", imdb."Star" from "IMDB_Data" imdb
INNER JOIN "TMDB_Data" tmdb ON
imdb."Movie_title"=tmdb."Movie_title"
where imdb."Country" ='USA';

-- Movies where IMDB score >7
Select imdb."Movie_title",iscore."IMDB_Score",ivote."Vote_Count" from "IMDB_Data" imdb
INNER JOIN "IMDB_Score" iscore ON
imdb."Movie_title"=iscore."Movie_title"
INNER JOIN "IMDB_Vote_Count" ivote ON
imdb."Movie_title"=ivote."Movie_title"
where iscore."IMDB_Score">7
ORDER BY iscore."IMDB_Score" DESC;

-- Movies where TMDB score >7
Select tmdb."Movie_title",tscore."TMDB_Score",tvote."Vote_Count" from "TMDB_Data" tmdb
INNER JOIN "TMDB_Score" tscore ON
tmdb."Movie_title"=tscore."Movie_title"
INNER JOIN "TMDB_Vote_Count" tvote ON
tmdb."Movie_title"=tvote."Movie_title"
where tscore."TMDB_Score">7
ORDER BY tscore."TMDB_Score" DESC;

-- Movies in Netflix which were added in 2018 and later
Select * from "Netflix" nfx
INNER JOIN "TMDB_Data" tmdb ON
tmdb."Movie_title"=nfx."Movie_title"
where nfx."Date_added">'2018-01-01'
ORDER BY nfx."Date_added" DESC;

--Wikipedia plot detials of Movies with runtime 1-2 hrs
Select * from "TMDB_Data" tmdb
INNER JOIN "Wiki_Plots" wiki ON
tmdb."Movie_title"=wiki."Movie_title"
where tmdb."Runtime">='60' AND tmdb."Runtime"<='120';

