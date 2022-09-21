### INTRO

# R utiliza el signo # para añadir comentarios, de modo que usted y otros puedan 
# entender de qué trata el código R. ¡Al igual que Twitter! Los comentarios no se 
# ejecutan como código R, por lo que no influirán en el resultado. Por ejemplo, 
# Calcular 3 + 4 en el editor de la derecha es un comentario.

# También puedes ejecutar comandos de R directamente en la consola. 
# Esta es una buena manera de experimentar con el código R, ya que no se 
# comprueba que su envío sea correcto.

## Instrucciones

# En el editor de la derecha ya hay algún código de ejemplo. ¿Puedes ver qué 
# líneas son código R real y cuáles son comentarios?
  
# Añade una línea de código que calcule la suma de 6 y 12

# Calculate 3 + 4
3 + 4

# Calculate 6 + 12
6 + 12

### Aritmética con R
# En su forma más básica, R puede utilizarse como una simple calculadora. Considere los siguientes operadores aritméticos:
  
  # Suma: +
  # Sustracción: -
  # Multiplicación: *
  # División: /
  # Exponenciación: ^
  # Módulo: %%.

# Los dos últimos necesitan una explicación:

  
# El operador ^ eleva el número de la izquierda a la potencia del número de la 
# derecha: por ejemplo, 3^2 es 9.


# El modulo devuelve el resto de la división del número de la izquierda por el 
# de la derecha, por ejemplo 5 modulo 3 o 5 %% 3 es 2.

# Con estos conocimientos, sigue las instrucciones para completar el ejercicio.


### Instrucciones

# Escribe 2^5 en el editor para calcular 2 a la potencia 5.
# Escriba 28 %% 6 para calcular 28 módulo 6.
# Envía la respuesta y mira la salida de R en la consola.
# Observa cómo el símbolo # se utiliza para añadir comentarios en el código R.


# An addition
5 + 5 

# A subtraction
5 - 5 

# A multiplication
3 * 5

# A division
(5 + 5) / 2 

# Exponentiation

2^5
# Modulo
28 %% 6


### Asignación de variables

# Un concepto básico en la programación (estadística) es el de variable.

# Una variable le permite almacenar un valor (por ejemplo, 4) o un objeto 
# (por ejemplo, la descripción de una función) en R. Posteriormente, puede 
# utilizar el nombre de esta variable para acceder fácilmente al valor o al 
# objeto que se almacena dentro de esta variable.

# Puede asignar un valor 4 a la variable mi_var con el comando


# my_var <- 4

## Instrucciones

# Complete el código en el editor de manera que asigne el valor 42 a la 
# variable x en el editor. Envía la respuesta. Observa que cuando le pides a R 
# que imprima x, aparece el valor 42.


# Assign the value 42 to x
x <- 
  
# Print out the value of the variable x
x <- 42


### Asignación de variables (2)

# Suponga que tiene una cesta de fruta con cinco manzanas. Como analista de 
# datos en formación, quiere almacenar el número de manzanas en una variable 
# con el nombre mis_manzanas.


## Instrucciones

# Escriba el siguiente código en el editor: mis_manzanas <- 5. 
# Esto asignará el valor 5 a mis_manzanas.

# Escriba: mis_manzanas debajo del segundo comentario. 
# Esto imprimirá el valor de mis_manzanas.

# Envía tu respuesta, y mira la salida: ves que se imprime el número 5. 
# Así que R vincula ahora la variable mis_manzanas con el valor 5.

# Assign the value 5 to the variable my_apples
my_apples <- 5

# Print out the value of the variable my_apples
my_apples


## Asignación variable (3)

# Toda cesta de fruta sabrosa necesita naranjas, así que decides añadir seis naranjas. 

# Como analista de datos, tu reflejo es crear inmediatamente la variable mis_naranjas 
# y asignarle el valor 6. A continuación, quieres calcular cuántas piezas de fruta tienes en total.

# Como has dado nombres significativos a estos valores, ahora puedes codificar esto de forma clara:

# my_apples + my_oranges


# Instrucciones

# Asigna a mis_naranjas el valor 6.
# Suma las variables mis_manzanas y mis_naranjas y haz que R simplemente imprima el resultado.
# Asigna el resultado de sumar mis_manzanas y mis_naranjas a una nueva variable mi_fruta.


# Assign a value to the variables my_apples and my_oranges
my_apples <- 5


# Add these two variables together
my_oranges <- 6

# Create the variable my_fruit
my_fruit = my_apples + my_oranges
my_fruit


### Tipos de datos básicos en R

# R trabaja con numerosos tipos de datos. Algunos de los tipos más básicos para empezar son

 # Los valores decimales como 4,5 se llaman numéricos.
 # Los números enteros como 4 se llaman enteros. Los números enteros también son numéricos.
 # Los valores booleanos (TRUE o FALSE) se llaman lógicos.
 # Los valores de texto (o cadena) se denominan caracteres.

# Observe cómo las comillas en el editor indican que "algún texto" es una cadena.

## Instrucciones

#Cambia el valor de la variable:
  
# mi_variable numérica a 42.

# La variable mi_carácter a "universo". Tenga en cuenta que las comillas 
# indican que "universo" es un carácter.

# mi_variable lógica a FALSE.

# Tenga en cuenta que R es sensible a las mayúsculas y minúsculas.

# Change my_numeric to be 42
my_numeric <- 42

# Change my_character to be "universe"
my_character <- "universe"

# Change my_logical to be FALSE
my_logical <- FALSE


### ¿Qué es ese tipo de datos?

# ¿Recuerdas que cuando sumaste 5 + "seis", obtuviste un error debido a un 
# desajuste en los tipos de datos? Puedes evitar estas situaciones embarazosas 
# comprobando de antemano el tipo de datos de una variable. Puedes hacerlo con la
# función class(), como muestra el código del editor.

## Instrucciones

# Completa el código en el editor y también imprime las clases de mi_carácter y mi_lógico.

# Declare variables of different types
my_numeric <- 42
my_character <- "universe"
my_logical <- FALSE 

# Check class of my_numeric
class(my_numeric)

# Check class of my_character

class(my_character)
# Check class of my_logical
class(my_logical)
