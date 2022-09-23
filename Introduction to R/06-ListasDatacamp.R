### Listas

### Listas, ¿para qué las necesitas?
  
# ¡Enhorabuena! A estas alturas del curso ya estás familiarizado con

# Vectores (array unidimensional): pueden contener valores numéricos, de 
# caracteres o lógicos. Los elementos de un vector tienen todos el mismo tipo de datos.

# Matrices (matriz bidimensional): pueden contener valores numéricos, de 
# caracteres o lógicos. Todos los elementos de una matriz tienen el mismo tipo de datos.

# DataFrame (objetos bidimensionales): pueden contener valores 
# numéricos, de caracteres o lógicos. Dentro de una columna, todos los 
# elementos tienen el mismo tipo de datos, pero las diferentes columnas 
# pueden tener diferentes tipos de datos.

# Bastante bien para un novato en R, ¿verdad? ;-)


### Listas, ¿para qué las necesitas? (2)

# Una lista en R es similar a su lista de tareas pendientes en el trabajo o 
# en la escuela: los diferentes elementos de esa lista probablemente difieren 
# en longitud, característica y tipo de actividad que debe realizarse.

# Una lista en R permite reunir una variedad de objetos bajo un mismo nombre 
# (es decir, el nombre de la lista) de forma ordenada. Estos objetos pueden ser 
# matrices, vectores, marcos de datos, incluso otras listas, etc. Ni siquiera es 
# necesario que estos objetos estén relacionados entre sí de alguna manera.

# Se podría decir que una lista es una especie de supertipo de datos: ¡se puede 
# almacenar prácticamente cualquier información en ella!


### Crear una lista

# Vamos a crear nuestra primera lista. 
# Para construir una lista se utiliza la función list():


# my_list <- list(comp1, comp2 ...)


# Los argumentos de la función lista son los componentes de la lista. 
# Recuerda que estos componentes pueden ser matrices, vectores, otras listas.

## Instrucciones

# Construye una lista, llamada my_list, que contenga las variables my_vector, 
# my_matrix y mi_df como componentes de la lista.


# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Construct list with these different elements:
my_list <- list(my_vector,my_matrix, my_df)


### Creación de una lista con nombre

# Bien hecho, ¡estás en racha!
  
# Al igual que en tu lista de tareas, quieres evitar no saber ni recordar 
# qué significan los componentes de tu lista. Por eso debes ponerles nombre:

# my_list <- list(name1 = your_comp1, 
#                name2 = your_comp2)

# Esto crea una lista con componentes que se llaman nombre1, nombre2, 
# y así sucesivamente. Si quieres nombrar tus listas después de haberlas 
# creado, puedes usar la función names() como hiciste con los vectores. 
# Los siguientes comandos son totalmente equivalentes a la asignación anterior:


# my_list <- list(your_comp1, your_comp2)
# names(my_list) <- c("name1", "name2")

## Instrucciones

# Cambia el código del ejercicio anterior (ver editor) añadiendo nombres a 
# los componentes. Utilice para mi_vector el nombre vec, para mi_matriz el 
# nombre mat y para mi_df el name df.

# Imprime my_list para que puedas inspeccionar la salida.


# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Adapt list() call to give the components names
my_list <- list(my_vector, my_matrix, my_df)
names(my_list) <- c("vec", "mat", "df")

# Print out my_list 

my_list

### Crear una lista con nombre (2)

# Como eres un gran aficionado al cine (recuerda tu trabajo en LucasFilms), 
# decides empezar a almacenar información sobre buenas películas con la ayuda de listas.

# Empieza creando una lista para la película "El Resplandor". 
# Ya hemos creado las variables mov, act y rev en tu espacio de trabajo de R. 
# Siéntete libre de comprobarlas en la consola.

## Instrucciones

# Complete el código en el editor para crear shining_list; contiene tres elementos:
  
    # moviename: una cadena de caracteres con el título de la película (almacenada en mov)
    # actors: un vector con los nombres de los actores principales (almacenado en act)
    # críticas: un marco de datos que contiene algunas críticas (almacenado en rev)

# No olvides nombrar los componentes de la lista como corresponde 
# (los nombres son moviename, actors y reviews).

moviename <- "The Shining"
actors <- c("Jack Nicholson", "Shelley Duvall", "Danny Lloyd", "Scatman Crothers", "Barry Nelson") 

scores <- c(4.5, 4.0, 5.0)
sources <- c("IMDb1", "IMDb2", "IMDb3")
comments <- c("Best Horror Film I Have Ever Seen",
              "A truly brilliant and scary film from Stanley Kubrick",
              "A masterpiece of psychological horror")
reviews <- data.frame(scores, sources, comments)

# Finish the code to build shining_list


shining_list <- list(moviename,actors,reviews)

names(shining_list) <- c("mov", "act", "rev")

shining_list


### Seleccionar elementos de una lista

# A menudo, su lista se compone de numerosos elementos y componentes. 
# Por lo tanto, sacar un solo elemento, varios elementos o un componente 
# no siempre es sencillo.

# Una forma de seleccionar un componente es utilizar la posición numerada de ese 
# componente. Por ejemplo, para "grab" el primer componente de shining_list se escribe

shining_list[[1]]

# Una forma rápida de comprobarlo es escribirlo en la consola. 
# Es importante recordar: para seleccionar elementos de los vectores, 
# se utilizan corchetes simples: [ ]. ¡No los confundas!
  
# También puede referirse a los nombres de los componentes, con [[ ]] o 
# con el signo $. Ambos seleccionarán el marco de datos que representa las revisiones:

shining_list[["rev"]]
shining_list$rev


# Además de seleccionar componentes, a menudo es necesario seleccionar 
# elementos específicos de estos componentes. Por ejemplo, con 
# shining_list[[2]][1] se selecciona del segundo componente, actores 
# (shining_list[[2]]), el primer elemento ([1]). Cuando escribas esto en 
# la consola, verás que la respuesta es Jack Nicholson.


shining_list[[2]][1]

## Instrucciones

# Seleccione de shining_list el vector que representa a los actores. 
# Simplemente imprime este vector.

# Seleccione de shining_list el segundo elemento del vector que representa 
# a los actores. Haz una impresión como la anterior.


# Print out the vector representing the actors

shining_list$act
# Print the second element of the vector representing the actors

shining_list$act[2]

### Crear una nueva lista para otra película

# Has encontrado críticas de otra película más reciente de Jack Nicholson: ¡Los Infiltrados!

#     Scores	Comments
#     4.6	    I would watch it again
#     5	      Amazing!
#     4.8	    I liked it
#     5	      One of the best movies
#     4.2	    Fascinating plot


# Sería útil reunir todos los datos de la película, como el título, 
# los actores y las críticas, en una sola variable. Como estos datos 
# tienen formas diferentes, es natural combinarlos en una variable de lista.

# movie_title, que contiene el título de la película, y movie_actors, 
# que contiene los nombres de algunos de los actores de la película, están 
# disponibles en tu espacio de trabajo.


## Instrucciones

# Crea dos vectores, llamados scores  y comments, que contengan la 
# información de las reseñas mostradas en la tabla.

scores <- c(4.6, 5, 4.8, 5, 4.5)
comments <- c("I would watch it again", "Amazing", "I liked it", "One of the best movies", "Fascinating plot")
movie_actors<- c("Leonardo DiCaprio", "Matt Damon", "Jack Nicholson", "Mark Wahlberg", "Vera Farmiga", "Martin Sheen")
movie_title <- "The Departed"

# Encuentre el promedio del vector de scores y guárdelo como avg_review.

avg_review <- mean(scores)

# Combine los vectores de scores y comments en un marco 
# de datos llamado reviews_df.


reviews_df <- data.frame(scores, comments)


# Cree una lista, llamada departed_list, que contenga el 
# título de la película, movie_actors, marco de datos de las críticas 
# como reviews_df, y la puntuación media de las críticas como avg_review, e imprimirla.


departed_list <- list(movie_title, movie_actors, reviews_df, avg_review)

departed_list




