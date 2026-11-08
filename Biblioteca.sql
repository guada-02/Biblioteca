BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "LIbros" (
	"Id_libros"	INTEGER,
	"titulo"	VARCHAR(150) NOT NULL,
	"añO"	INTEGER NOT NULL,
	"Id_autor"	INTEGER NOT NULL,
	PRIMARY KEY("Id_libros"),
	FOREIGN KEY("Id_autor") REFERENCES "Autores"("Id_autor")
);
INSERT INTO "LIbros" VALUES (1,'cIEN AÑOS DE SOLEDAD',1967,1);
INSERT INTO "LIbros" VALUES (2,'El amor en los tiemposdel colera',1985,1);
INSERT INTO "LIbros" VALUES (3,'Cronica de una Muerte Anunciada',1981,1);
INSERT INTO "LIbros" VALUES (4,'El Laberito de la Soledad',1950,2);
INSERT INTO "LIbros" VALUES (5,'Piedra de Sol',1957,2);
INSERT INTO "LIbros" VALUES (6,'La noche de Tlaltelolco',1971,3);
INSERT INTO "LIbros" VALUES (7,'Hasta no verte Jesus mio',1969,3);
INSERT INTO "LIbros" VALUES (8,'La Ciudad y los Perros',1963,4);
INSERT INTO "LIbros" VALUES (9,'Convercion en la Catedra',1969,4);
INSERT INTO "LIbros" VALUES (10,'La casa de los Espiritus',1982,5);
COMMIT;
