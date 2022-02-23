CREATE DATABASE peliculas;
\c peliculas

CREATE TABLE peliculas (
    Id INT,
    Pelicula VARCHAR(120),
    Anho INT,
    Director VARCHAR(25),
    PRIMARY KEY (Id)
);

CREATE TABLE reparto (
    Id INT,
    Reparto VARCHAR(100),
    FOREIGN KEY (Id) REFERENCES
    peliculas(Id)
);

\copy peliculas FROM 'C:\Users\Daniela\workspace\bootcamp\m5-peliculas\peliculas.csv' csv header;

\copy reparto FROM 'C:\Users\Daniela\workspace\bootcamp\m5-peliculas\reparto.csv' csv;

SELECT id FROM peliculas WHERE pelicula='Titanic';

SELECT * FROM reparto where id=2;

SELECT count(Id) from reparto where reparto='Harrison Ford';

SELECT * from peliculas where Anho >= 1990 and Anho <=1999 ORDER BY pelicula ASC;

-- otra manera es : SELECT * from peliculas where Anho BETWEEN 1990 and 1999 ORDER BY pelicula ASC;

SELECT pelicula, length(pelicula) as longitud_titulo from peliculas;

SELECT MAX(length(pelicula)) as max_longitud_titulo from peliculas;

-- para mostrar el nombre y largo del titulo mayor

SELECT MAX (LENGTH(pelicula)) FROM peliculas;
SELECT pelicula, LENGTH(pelicula) AS longitud_titulo FROM peliculas
ORDER BY longitud_titulo DESC LIMIT 1;



