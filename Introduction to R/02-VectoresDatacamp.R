# Crear un vector

# Define the variable vegas
vegas <- "Go!"

# Crear un vector (2)
# ¡Centrémonos primero!
  
# Los vectores son matrices de una dimensión que pueden contener datos numéricos, 
# datos de caracteres o datos lógicos. En otras palabras, un vector es una herramienta 
# sencilla para almacenar datos. Por ejemplo, puede almacenar sus ganancias y pérdidas 
# diarias en los casinos.

# En R, se crea un vector con la función combinada c(). Colocas los elementos 
# del vector separados por una coma entre los paréntesis. Por ejemplo:
  
numeric_vector <- c(1, 2, 3)
character_vector <- c("a", "b", "c")

# Once you have created these vectors in R, you can use them to do calculations.

## Instructions

# Complete the code such that boolean_vector contains the three elements:
# TRUE, FALSE and TRUE (in that order).


### Crear un vector (3)


#Antes de hacer un primer análisis, decides reunir primero todas las 
#ganancias y pérdidas de la última semana:
  
# Para poker_vector:

      # On Monday you won $140
      # Tuesday you lost $50
      # Wednesday you won $20
      # Thursday you lost $120
      # Friday you won $240

# For roulette_vector:

      # On Monday you lost $24
      # Tuesday you lost $50
      # Wednesday you won $100
      # Thursday you lost $350
      # Friday you won $10

# Para poder utilizar estos datos en R, decides crear las variables 
# vector_poker y vector_roulette. 

## Instrucciones

# Asigna las ganancias/pérdidas de la ruleta a la variable vector_roulette. 
# Perdiste 24$, luego perdiste 50$, ganaste 100$, perdiste 350$ y ganaste 10$.


# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <-  c(-24,-50,100,-350,10)


## Cómo nombrar un vector

# Como analista de datos, es importante tener una visión clara de los datos 
# que se utilizan. Por lo tanto, es esencial entender a qué se refiere cada elemento.

# En el ejercicio anterior, hemos creado un vector con sus ganancias a 
# lo largo de la semana. Cada elemento del vector se refiere a un día de 
# la semana, pero es difícil saber qué elemento pertenece a cada día. 
# Sería bueno que pudieras mostrarlo en el propio vector.

# Puedes dar un nombre a los elementos de un vector con la función names(). 
# Echa un vistazo a este ejemplo:

# some_vector <- c("John Doe", "poker player")
# names(some_vector) <- c("Name", "Profession")

# Este código crea primero un vector some_vector y luego da un nombre a los dos 
# elementos. Al primer elemento se le asigna el name Nombre, mientras que al 
# segundo elemento se le asigna la etiqueta Profesión. Al imprimir el contenido 
# en la consola se obtiene la siguiente salida:


# Name     Profession 
# "John Doe" "poker player" 

## Instrucciones

# El código en el editor nombra los elementos en poker_vector con los días 
# de la semana. Añadir código para hacer lo mismo para roulette_vector.

# Assign days as names of poker_vector
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign days as names of roulette_vector

names(roulette_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
roulette_vector


## Nombrar un vector (2)

# Si quieres convertirte en un buen estadístico, tienes que volverte perezoso. 
# Si ya eres perezoso, es muy probable que seas uno de esos excepcionales talentos 
# estadísticos natos).

# En los ejercicios anteriores probablemente hayas experimentado que es aburrido 
# y frustrante escribir y volver a escribir información como los días de la semana. 
# Sin embargo, si lo miras desde una perspectiva superior, hay una forma más 
# eficiente de hacerlo, a saber, ¡asignar el vector de días de la semana a una variable!
  
# Al igual que hizo con sus retornos de póker y ruleta, también puede crear 
# una variable que contenga los días de la semana. De este modo, podrá utilizarla y reutilizarla.


# Instrucciones

# Una variable days_vector que contiene los días de la semana ya ha sido creada para usted.
# Utilice days_vector para establecer los nombres de poker_vector y roulette_vector.



# The variable days_vector
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign the names of the day to roulette_vector and poker_vector
names(poker_vector) <-   days_vector
names(roulette_vector) <-days_vector
roulette_vector



# Cálculo de las ganancias totales

# Ahora que tienes las ganancias del póker y de la ruleta como vectores con nombre, 
# puedes empezar a hacer algo de magia analítica de datos.

# Quiere averiguar el siguiente tipo de información:
  
  # ¿Cuánto ha sido su ganancia o pérdida global por día de la semana?
  # ¿Ha perdido dinero durante la semana en total?
  # ¿Ha ganado/perdido dinero en el póquer o en la ruleta?
  # Para obtener las respuestas, tienes que hacer cálculos aritméticos sobre vectores.

# Es importante saber que si se suman dos vectores en R, se toma la suma de elementos. 
# Por ejemplo, las tres afirmaciones siguientes son completamente equivalentes:


c(1, 2, 3) + c(4, 5, 6)
c(1 + 4, 2 + 5, 3 + 6)
c(5, 7, 9)

# También puedes hacer los cálculos con variables que representan vectores:

a <- c(1, 2, 3) 
b <- c(4, 5, 6)
c <- a + b
c


## Instrucciones

# Tomar la suma de las variables A_vector y B_vector y asignarla a total_vector.
# Inspeccione el resultado imprimiendo total_vector.


A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)

# Take the sum of A_vector and B_vector
total_vector <- A_vector + B_vector

# Print out total_vector

total_vector


## Cálculo de las ganancias totales (2)

# Ahora que entiende cómo R hace aritmética con vectores, ¡es el momento de poner
# esos Ferraris en su garaje! En primer lugar, necesitas entender cuál fue la 
# ganancia o pérdida total por día de la semana. La ganancia total diaria es la 
# suma de la ganancia/pérdida que realizaste en el póker por día, y la ganancia/pérdida 
# que realizaste en la ruleta por día.

# En R, esto es simplemente la suma de vector_roulette y vector_poker.


## Instructions

# Assign to the variable total_daily how much you won or lost on each day in 
# total (poker and roulette combined).

# Assign to total_daily how much you won/lost on each day
total_daily <- poker_vector + roulette_vector
total_daily


## Instrucciones

# Calcula la cantidad total de dinero que has ganado/perdido con la ruleta y 
# asígnala a la variable total_roulette.

# Ahora que tienes los totales de la ruleta y el póker, puedes calcular fácilmente 
# total_week (que es la suma de todas las ganancias y pérdidas de la semana).

# Imprime total_week.

# Total winnings with poker
total_poker <- sum(poker_vector)

# Total winnings with roulette
total_roulette <-  sum(roulette_vector)

# Total winnings overall
total_week <- sum(total_poker + total_roulette)

# Print out total_week
total_week


## Comparación de las ganancias totales

# Parece que estás perdiendo dinero. Es hora de repensar y adaptar su estrategia. 
# Esto requerirá un análisis más profundo...

# Después de una breve lluvia de ideas en el jacuzzi de tu hotel, te das cuenta 
# de que una posible explicación podría ser que tus habilidades en la ruleta no 
# están tan bien desarrolladas como tus habilidades en el póker. Así que tal vez 
# tus ganancias totales en el póquer son mayores (o > ) que en la ruleta.

## Instrucciones

# Calcule total_poker y total_roulette como en el ejercicio anterior. Utilice la 
# función sum() dos veces.

# Compruebe si sus ganancias totales en el póquer son mayores que en la ruleta 
# mediante una comparación. Simplemente imprime el resultado de esta comparación. 
# ¿Qué conclusión sacas, debes centrarte en la ruleta o en el póker?


# Check if you realized higher total gains in poker than in roulette

total_poker > total_roulette

## Selección de vectores: los buenos tiempos

# Tu corazonada parecía ser acertada. Parece que el juego de póquer 
# es más de tu agrado que la ruleta.

# Otra posible vía de investigación es tu rendimiento al principio de la 
# semana laboral en comparación con el final de la misma. Te tomaste un par 
# de cócteles Margarita al final de la semana...

# Para responder a esa pregunta, sólo querrás centrarte en una selección del 
# vector_total. En otras palabras, nuestro objetivo es seleccionar elementos 
# específicos del vector. Para seleccionar elementos de un vector 
# (y posteriormente matrices, marcos de datos, ...), puedes utilizar corchetes. 
# Entre los corchetes se indica qué elementos hay que seleccionar. Por ejemplo, 
# para seleccionar el primer elemento del vector, se escribe poker_vector[1]. 
# Para seleccionar el segundo elemento del vector, se escribe vector_poker[2], 
# etc. Observe que el primer elemento de un vector tiene el índice 1, no el 0 
# como en muchos otros lenguajes de programación.


## Instrucciones

# Asigna los resultados de póker del miércoles a la variable poker_wednesday.

# Define a new variable based on a selection
poker_wednesday <- poker_vector[3]
poker_wednesday


## Selección de vectores: los buenos tiempos (2)

#¿Qué tal si analizas tus resultados de mitad de semana?
  
# Para seleccionar varios elementos de un vector, puede añadir corchetes 
# al final del mismo. Puede indicar entre los corchetes qué elementos deben 
# seleccionarse. Por ejemplo: suponga que quiere seleccionar el primer y el 
# quinto día de la semana: utilice el vector c(1, 5) entre los corchetes. 
# Por ejemplo, el código siguiente selecciona el primer y el quinto elemento 
# de poker_vector:
  
poker_vector[c(1, 5)]
  
  
# Instrucciones
  
# Asigna los resultados de póker del martes, miércoles y jueves 
# a la variable poker_midweek.
  
  
# Define a new variable based on a selection
poker_midweek <- poker_vector[c(2, 3, 4)]
poker_midweek

## Selección de vectores: los buenos tiempos (3)

# Seleccionar varios elementos de poker_vector con c(2, 3, 4) no es muy 
# conveniente. Muchos estadísticos son perezosos por naturaleza, así que crearon 
# una forma más fácil de hacerlo: c(2, 3, 4) puede abreviarse como2:4, lo 
# que genera un vector con todos los números naturales de 2 a 4.

# Así, otra forma de encontrar los resultados de mitad de semana es 
# poker_vector[2:4]. Observe cómo el vector 2:4 se coloca entre los corchetes 
# para seleccionar el elemento 2 hasta el 4.

# Instrucciones

# Asigna al vector ruleta_selección los resultados de la ruleta desde el 
# martes hasta el viernes; haz uso de : si te facilita las cosas.

# Define a new variable based on a selection
roulette_selection_vector <- roulette_vector [2:5]
roulette_selection_vector

## Selección de vectores: los buenos tiempos (4)

# Otra forma de abordar el ejercicio anterior es utilizar los nombres de los 
# elementos del vector (Monday, Tuesday, ...) en lugar de sus posiciones numéricas. 
# Por ejemplo

poker_vector["Monday"]

# Seleccionará el primer elemento de poker_vector ya que "Monday" es el 
# nombre de ese primer elemento.

# Al igual que hizo en el ejercicio anterior con los numéricos, también puede 
# utilizar los nombres de los elementos para seleccionar varios elementos, 
# por ejemplo

poker_vector[c("Monday", "Tuesday")]


## Instrucciones

# Seleccione los tres primeros elementos en poker_vector utilizando sus nombres: 
# "Monday", "Tuesday" y "Wednesday". Asignar el resultado de la selección a poker_start.

# Calcule la media de los valores en poker_start con la función mean(). 
# Simplemente imprime el resultado para poder inspeccionarlo.

# Select poker results for Monday, Tuesday and Wednesday
poker_start <- poker_vector[c(1,2,3)] 

# Calculate the average of the elements in poker_start
mean(poker_start)


## Selección por comparación - Paso 1

# Haciendo uso de los operadores de comparación, podemos abordar la cuestión 
# anterior de una manera más proactiva.

# Los operadores de comparación (lógicos) conocidos por R son:
  
# < para menor que
# > para mayor que
# <= para menor o igual que
# >= para mayor o igual que
# == para iguales entre sí
# != para que no sean iguales entre sí

# Como se ha visto en el capítulo anterior, indicar 6 > 5 devuelve TRUE. 
# Lo bueno de R es que puedes utilizar estos operadores de comparación también 
# en vectores. Por ejemplo:


c(4, 5, 6) > 5
# FALSE FALSE TRUE

# Este comando comprueba para cada elemento del vector si la condición 
# establecida por el operador de comparación es TRUE o FALSE.


## Instrucciones

# Comprueba qué elementos del vector_póker son positivos (es decir, > 0) 
# y asígnalo al vector_selección.

# Imprima selection_vector para que pueda inspeccionarlo. La impresión le indica 
# si ganó (TRUE) o perdió (FALSE) algún dinero por cada día.

# Which days did you make money on poker?
selection_vector <- (poker_vector) > 0

# Print out selection_vector
selection_vector

## Selección por comparación - Paso 2

# Trabajar con comparaciones facilitará su vida analítica de datos. 
# En lugar de seleccionar un subconjunto de días para investigar tú mismo 
# (como antes), puedes simplemente pedirle a R que te devuelva sólo aquellos 
# días en los que obtuviste una rentabilidad positiva en el póker.

# En los ejercicios anteriores utilizó selection_vector <- poker_vector > 0 
# para encontrar los días en los que tuvo un rendimiento positivo del póker. 
# Ahora, le gustaría saber no sólo los días en los que ganó, sino también cuánto
# ganó en esos días.

# Puede seleccionar los elementos deseados, poniendo selection_vector entre 
# los corchetes que siguen a poker_vector:

poker_vector[selection_vector]

# R sabe qué hacer cuando se pasa un vector lógico entre corchetes: 
# sólo seleccionará los elementos que correspondan a TRUE en selection_vector.

## Instrucciones

# Utilice selection_vector entre corchetes para asignar a la variable 
# poker_winning_days las cantidades que ha ganado en los días rentables.

# Which days did you make money on poker?
selection_vector <- poker_vector > 0

# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]
poker_winning_days

## Selección avanzada

# Al igual que en el caso del póker, también quiere conocer los días en los 
# que ha obtenido un rendimiento positivo en la ruleta.

## Instrucciones

# Cree la variable vector_selección, esta vez para ver si obtuvo ganancias con 
# la ruleta durante diferentes días.

# Asigna las cantidades que ganaste en los días que terminaste positivamente 
# para la ruleta a la variable roulette_winning_days. Este vector 
# contiene así las ganancias positivas del roulette_vector.


# Which days did you make money on roulette?
selection_vector <- roulette_vector > 0

# Select from roulette_vector these days
roulette_winning_days <- roulette_vector[selection_vector]
roulette_winning_days

