### Data frames


# ¿Qué es un marco de datos?
  
# Quizá recuerdes del capítulo sobre matrices que todos los elementos que pongas 
# en una matriz deben ser del mismo tipo. En aquel entonces, tu conjunto de datos 
# sobre Star Wars sólo contenía elementos numéricos.

# Sin embargo, al realizar una encuesta de investigación de mercado, 
# a menudo tienes preguntas como:
  
# '¿Está usted casado?' o preguntas de tipo 'sí/no' (lógicas)
# ¿Cuántos años tiene?" (numérico)
# ¿Cuál es su opinión sobre este producto?" u otras preguntas "abiertas" (carácter)
...
# El resultado, es decir, las respuestas de los encuestados a las preguntas 
# formuladas anteriormente, es un conjunto de datos de diferentes tipos. 
# A menudo se encontrará trabajando con conjuntos de datos que contienen 
# diferentes tipos de datos en lugar de uno solo.

# Un marco de datos tiene las variables de un conjunto de datos como columnas y 
# las observaciones como filas. Este concepto será familiar para aquellos que 
# vienen de diferentes paquetes de software estadístico como SAS o SPSS.

## Instrucciones

# Envíe la respuesta. Los datos del marco de datos de ejemplo incorporado 
# mtcars se imprimirán en la consola.

# Print out built-in R data frame
mtcars


## Rápido, echa un vistazo a tu conjunto de datos

# Vaya, ¡son muchos coches!
  
# Trabajar con conjuntos de datos de gran tamaño no es raro en el análisis de datos. 
# Cuando se trabaja con conjuntos de datos y marcos de datos (extremadamente) grandes, 
# la primera tarea como analista de datos es desarrollar una clara comprensión de su 
# estructura y elementos principales. Por lo tanto, a menudo es útil mostrar sólo una 
# pequeña parte del conjunto de datos.

# ¿Cómo se puede hacer esto en R? Bien, la función head() permite mostrar las 
# primeras observaciones de un marco de datos. Del mismo modo, la función tail() 
# imprime las últimas observaciones del conjunto de datos.

# Tanto head() como tail() imprimen una línea superior llamada "cabecera", que 
# contiene los nombres de las diferentes variables de su conjunto de datos.

## Instrucciones

# Llame a head() en el conjunto de datos mtcars para echar un vistazo a la 
# cabecera y a las primeras observaciones.

# Call head() on mtcars
head(mtcars)


## Echa un vistazo a la estructura

# Otro método que se utiliza a menudo para obtener una visión general rápida de 
# sus datos es la función str(). La función str() le muestra la estructura de su 
# conjunto de datos. En el caso de un marco de datos, le indica

    # El número total de observaciones (por ejemplo, 32 tipos de coches)
    # El número total de variables (por ejemplo, 11 características de coches)
    # Una lista completa de los nombres de las variables (por ejemplo, mpg, cyl ... )
    # El tipo de datos de cada variable (por ejemplo, num)
    # Las primeras observaciones

# La aplicación de la función str() será a menudo lo primero que se haga al recibir 
# un nuevo conjunto de datos o marco de datos. Es una buena manera de obtener más 
# información sobre su conjunto de datos antes de sumergirse en el análisis real.

## Instrucciones

# Investiga la estructura de mtcars. Asegúrese de que ve los mismos números, 
# variables y tipos de datos mencionados anteriormente.

# Investigate the structure of mtcars
str(mtcars)


## Creación de un marco de datos

# Dado que utilizar los conjuntos de datos incorporados no es ni la mitad de 
# divertido que crear tus propios conjuntos de datos, el resto de este capítulo 
# se basa en tu conjunto de datos desarrollado personalmente. Ponte la mochila 
# de agua porque es hora de explorar el espacio.

# Como primer objetivo, quieres construir un marco de datos que describa las 
# principales características de ocho planetas de nuestro sistema solar. 
# Según tu buen amigo Buzz, las principales características de un planeta son:

    # El tipo de planeta (terrestre o gigante gaseoso).
    # El diámetro del planeta en relación con el diámetro de la Tierra.
    # La rotación del planeta a través del sol en relación con la de la Tierra.
    # Si el planeta tiene anillos o no (VERDADERO o FALSO).

# Después de hacer una investigación de calidad en Wikipedia, te sientes lo 
# suficientemente seguro como para crear los vectores necesarios: nombre, tipo, 
# diámetro, rotación y anillos; estos vectores ya han sido codificados en el editor. 
# El primer elemento de cada uno de estos vectores corresponde a la primera observación.

# Se construye un marco de datos con la función data.frame(). Como argumentos, 
# pasas los vectores de antes: se convertirán en las diferentes columnas de tu 
# marco de datos. Como cada columna tiene la misma longitud, los vectores que pases 
# también deben tener la misma longitud. Pero no olvides que es posible (y probable) 
# que contengan diferentes tipos de datos.

## Instrucciones
 
# Utilice la función data.frame() para construir un marco de datos. Pase los 
# vectores nombre, tipo, diámetro, rotación y anillos como argumentos a data.frame(), 
# en este orden. Llame al marco de datos resultante planets_df.

# Definition of vectors

name <- c("Mercury", "Venus", "Earth", 
          "Mars", "Jupiter", "Saturn", 
          "Uranus", "Neptune")
type <- c("Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", 
          "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 
              11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 
              0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name, type, diameter, rotation,rings )
planets_df

### Creación de un marco de datos (2)

# El marco de datos planets_df debe tener 8 observaciones y 5 variables. 
# Se ha puesto a disposición en el espacio de trabajo, por lo que puede 
# utilizarlo directamente.

## Instrucciones

# Utilice str() para investigar la estructura de la nueva variable planets_df.

str(planets_df)


## Selección de elementos del marco de datos

# Al igual que en el caso de los vectores y las matrices, los elementos de un 
# marco de datos se seleccionan con la ayuda de corchetes [ ]. Mediante el uso de 
# una coma, puede indicar qué seleccionar de las filas y de las 
# columnas respectivamente. Por ejemplo

# mi_df[1,2] selecciona el valor de la primera fila y la segunda columna de mi_df.

# mi_df[1:3,2:4] selecciona las filas 1, 2, 3 y las columnas 2, 3, 4 de mi_df.

# A veces se desea seleccionar todos los elementos de una fila o columna. 
# Por ejemplo, mi_df[1, ] selecciona todos los elementos de la primera fila. 
# Apliquemos ahora esta técnica a planetas_df.

# Print out diameter of Mercury (row 1, column 3)
planets_df[1,3]

# Print out data for Mars (entire fourth row)
planets_df[4,]

### Selección de elementos del marco de datos (2)

# En lugar de utilizar números para seleccionar los elementos de un marco de datos, 
# también puede utilizar los nombres de las variables para seleccionar las 
# columnas de un marco de datos.

#Supongamos que quiere seleccionar los tres primeros elementos de la columna de 
#tipo. Una forma de hacerlo es

planets_df[1:3,2]

# Una posible desventaja de este enfoque es que tienes que saber (o buscar) 
# el número de columna del tipo, lo que se hace difícil si tienes muchas variables.
# A menudo es más fácil simplemente hacer uso del nombre de la variable:

planets_df[1:3,"type"]

## Instrucciones

# Seleccione e imprima los 5 primeros valores de la columna "diámetro" de planets_df.

planets_df[1:5,"diameter"]


### Sólo planetas con anillos

# A menudo querrá seleccionar una columna entera, es decir, una variable 
# específica de un marco de datos. Si quiere seleccionar todos los elementos 
# de la variable diámetro, por ejemplo, ambas cosas le servirán:


planets_df[,3]
planets_df[,"diameter"]


# Sin embargo, existe un atajo. Si sus columnas tienen nombres, puede utilizar el signo $:

planets_df$diameter

## Instrucciones

# Utilice el signo $ para seleccionar la variable anillos de planets_df. 
# Guarda el vector resultante como rings_vector.

# Imprime rings_vector para ver si lo has hecho bien.

rings_vector <- planets_df$rings

### Sólo planetas con anillos (2)

# Probablemente recuerdes del instituto que algunos planetas de nuestro 
# sistema solar tienen anillos y otros no. Lamentablemente, no puedes recordar 
# sus nombres. ¿Podría R ayudarte?
  
# Si escribes rings_vector en la consola, obtendrás:

# FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE

# Esto significa que las cuatro primeras observaciones (o planetas) no tienen 
# anillo (FALSE), pero las otras cuatro sí (TRUE). Sin embargo, no se obtiene 
# una buena visión de los nombres de estos planetas, su diámetro, etc. Intentemos 
# utilizar rings_vector para seleccionar los datos de los cuatro planetas con anillos.


## Instrucciones

# El código en el editor selecciona la columna del nombre de todos los planetas 
# que tienen anillos. Adapte el código para que en lugar de sólo la columna del 
# nombre, se seleccionen todas las columnas de los planetas que tienen anillos.


planets_df[rings_vector, ]


### Sólo planetas con anillos pero más cortos

# ¿Qué has aprendido exactamente en los ejercicios anteriores? Has seleccionado 
# un subconjunto de un marco de datos (planets_df) en función de si se cumple o 
# no una determinada condición (anillos o no anillos), y has conseguido sacar 
# todos los datos relevantes. Bastante impresionante. A estas alturas, probablemente 
# la NASA ya esté coqueteando con tu currículum ;-).

# Ahora, subamos un nivel y utilicemos la función subset(). 
# Deberías ver la función subset() como un atajo para hacer exactamente 
# lo mismo que hiciste en los ejercicios anteriores.


## subset(my_df, subset = some_condition)


#El primer argumento de subset() especifica el conjunto de datos para el 
#que se desea un subconjunto. Al añadir el segundo argumento, le da a R la 
#información y las condiciones necesarias para seleccionar el subconjunto correcto.

# El código siguiente dará exactamente el mismo resultado que obtuvo en el 
# ejercicio anterior, pero esta vez, ¡no necesitó el rings_vector!

## subset(planets_df, subset = rings)


## Instrucciones

# Utilice subset() en planets_df para seleccionar los planetas que tienen un 
# diámetro menor que la Tierra. 

# Como la variable diámetro es una medida relativa del diámetro del planeta con 
# respecto al de la Tierra, su condición es diámetro < 1.

subset(planets_df, subset = diameter < 1)

### Clasificación

## Hacer y crear clasificaciones es uno de los asuntos favoritos de la humanidad. 
## Estas clasificaciones pueden ser útiles (las mejores universidades del mundo), 
## entretenidas (las estrellas de cine más influyentes) o inútiles (el mejor parecido a 007).

# En el análisis de datos puedes ordenar tus datos según una determinada variable 
# del conjunto de datos. En R, esto se hace con la ayuda de la función order().

# order() es una función que te da la posición ordenada de cada elemento cuando se 
# aplica sobre una variable, como un vector por ejemplo:

a <- c(100, 10, 1000)
order(a)
# 2 1 3

# 10, que es el segundo elemento de a, es el elemento más pequeño, por lo que 2 
# es el primero en la salida de order(a). 100, que es el primer elemento de a, 
# es el segundo elemento más pequeño, por lo que 1 aparece en segundo lugar en la salida de order(a).

# Esto significa que podemos utilizar la salida de order(a) para reorganizar a:

a[order(a)]
# 10  100 1000


### Ordenar el marco de datos

# Bien, ahora que entiendes la función order(), vamos a hacer algo útil con ella. 
# Te gustaría reordenar tu marco de datos de forma que empiece con el planeta más
# pequeño y termine con el más grande. Una ordenación en la columna de diámetro.


## Instrucciones

# Llamar a order() sobre planets_df$diameter (la columna de diámetro de planets_df). 
# Guarde el resultado como posiciones.

# Ahora reorganice planets_df con el vector de posiciones como índices de fila 
# dentro de los corchetes. Mantenga todas las columnas. Simplemente imprime el resultado.

# Use order() to create positions
positions <- order(planets_df$diameter)

# Use positions to sort planets_df
planets_df[positions, ]



