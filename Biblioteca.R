# Proyecto Biblioteca - Guadalupe de lira alonso
# Lee la base de datos y muestra los 10 libros

library(DBI)
library(RSQLite)

# Conectarse a la base
con <- dbConnect(RSQLite::SQLite(), "Biblioteca.db")

# Ver tablas
print(dbListTables(con))

# Mostrar Autores
print("=== AUTORES ===")
print(dbReadTable(con, "Autores"))

# Mostrar Libros
print("=== LIBROS - 10 libros ===")
print(dbReadTable(con, "Libros"))

# Consulta: Libros con su autor
consulta <- dbGetQuery(con, "
SELECT Libros.titulo, Libros.año, Autores.nombre
FROM Libros
JOIN Autores ON Libros.Id_autor = Autores.Id_autor
")
print(consulta)

# Cerrar conexion
dbDisconnect(con)