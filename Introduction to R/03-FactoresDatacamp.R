### Factores

#¿Qué es un factor y por qué se utiliza?
#  En este capítulo se sumerge en el maravilloso mundo de los factores.
#
#El término factor se refiere a un tipo de dato estadístico utilizado para 
#almacenar variables categóricas. La diferencia entre una variable categórica 
#y una continua es que una variable categórica puede pertenecer a un número 
#limitado de categorías. Una variable continua, en cambio, puede corresponder 
#a un número infinito de valores.
#
#Es importante que R sepa si está tratando con una variable continua o categórica, 
#ya que los modelos estadísticos que desarrollará en el futuro tratan ambos tipos 
#de forma diferente. (Más adelante verá por qué es así).
#
#Un buen ejemplo de variable categórica es el sexo. En muchas circunstancias puede 
#limitar las categorías de sexo a "Hombre" o "Mujer". (A veces puede necesitar 
#diferentes categorías. Por ejemplo, puede necesitar considerar la variación 
#cromosómica, los animales hermafroditas o las diferentes normas culturales, 
#pero siempre tendrá un número finito de categorías).



# Assign to the variable theory what this chapter is about!
theory <- "factors"


#¿Qué es un factor y por qué se utiliza? (2)
#Para crear factores en R, se utiliza la función factor(). 
#Lo primero que hay que hacer es crear un vector que contenga todas las 
#observaciones que pertenecen a un número limitado de categorías. Por ejemplo, 
#sex_vector contiene el sexo de 5 individuos diferentes:
  

# Sex vector 
sex_vector <- c("Male","Female","Female","Male","Male")

#Está claro que aquí hay dos categorías, o en términos de R, 
#"niveles de factores": "Hombre" y "Mujer".

#La función factor() codificará el vector como un factor:  

# Convert sex_vector to a factor

factor_sex_vector <- factor(sex_vector)
factor_sex_vector

#Hay dos tipos de variables categóricas: una variable categórica nominal y 
#una variable categórica ordinal.
#
#Una variable nominal es una variable categórica sin un orden implícito. 
#Esto significa que es imposible decir que "una vale más que la otra". 
#Por ejemplo, piense en la variable categórica animales_vector con las 
#categorías "Elefante", "Jirafa", "Asno" y "Caballo". En este caso, es 
#imposible decir que uno está por encima o por debajo del otro. 
#(Tenga en cuenta que algunos de ustedes podrían estar en desacuerdo ;-) ).

#En cambio, las variables ordinales sí tienen un ordenamiento natural. 
#Consideremos, por ejemplo, la variable categórica vector_temperatura 
#con las categorías "Baja", "Media" y "Alta". Aquí es obvio que "Media" 
#está por encima de "Baja", y "Alta" está por encima de "Media".


# Animals
animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
factor_animals_vector <- factor(animals_vector)
factor_animals_vector

# Temperature
temperature_vector <- c("High", "Low", "High","Low", "Medium")
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector



#Niveles de los factores

#Cuando se obtiene por primera vez un conjunto de datos, a menudo se observa 
#que contiene factores con niveles de factor específicos. Sin embargo, a veces 
#querrá cambiar los nombres de estos niveles por claridad u otras razones. 
#R le permite hacer esto con la función levels():.


#levels(factor_vector) <- c("name1", "name2",...)

#Una buena ilustración son los datos brutos que le proporciona una encuesta.
#Una pregunta habitual en todo cuestionario es el sexo del encuestado. Aquí,
#para simplificar, sólo se registraron dos categorías, "M" y "F".
#(Normalmentese necesitan más categorías para los datos de las encuestas;
#de cualquier manera, se utiliza un factor para almacenar los datos categóricos).

#survey_vector <- c("M", "F", "F", "M", "M")


#Registrar el sexo con las abreviaturas "M" y "F" puede ser conveniente si está 
#recogiendo datos con lápiz y papel, pero puede introducir confusión al analizar 
#los datos. En ese momento, a menudo querrá cambiar los niveles del factor a 
#"Hombre" y "Mujer" en lugar de "M" y "F" para mayor claridad.
#
#Cuidado: el orden con el que asigna los niveles es importante. 
#Si escribe levels(factor_survey_vector), verá que sale [1] "F" "M". 
#Si no especifica los niveles del factor al crear el vector, R los asignará 
#automáticamente por orden alfabético. Para asignar 
#correctamente "F" a "Mujer" y "M" a "Hombre", los niveles deben establecerse 
#como c("Mujer", "Hombre"), en este orden.


# Code to build factor_survey_vector

survey_vector <- c("M", "F", "F", "M", "M")
factor_survey_vector <- factor(survey_vector)
factor_survey_vector

# Specify the levels of factor_survey_vector

# Specify the levels of factor_survey_vector
levels(factor_survey_vector) <- c("Female", "Male")

factor_survey_vector


#Resumir un factor

#Después de terminar este curso, una de sus funciones favoritas en R será summary(). 
#Esto le dará una rápida visión general del contenido de una variable:

#summary(my_var)

#Volviendo a nuestra encuesta, le gustaría saber cuántas respuestas "Hombre" 
#tiene en su estudio, y cuántas respuestas "Mujer". La función summary() le da 
#la respuesta a esta pregunta.


# Generate summary for survey_vector

summary(survey_vector)

# Generate summary for factor_survey_vector
summary(factor_survey_vector)

#Batalla de sexos

#Te preguntarás qué ocurre cuando intentas comparar elementos de un factor. 
#En factor_survey_vector tienes un factor con dos niveles: "Hombre" y "Mujer". 
#Pero, ¿cómo valora R estos niveles entre sí?



# Male
male <- factor_survey_vector[1]
male
# Female
female <- factor_survey_vector[2]
female
# Battle of the sexes: Male 'larger' than female?
male > female


#Factores ordenados

#Dado que "Hombre" y "Mujer" son niveles de factor no ordenados (o nominales), 
#R devuelve un mensaje de advertencia, indicando que el operador mayor que no 
#tiene sentido. Como se ha visto antes, R asigna un valor igual a los niveles 
#de dichos factores.
#
#Pero este no es siempre el caso. A veces también se trata de factores que 
#tienen un orden natural entre sus categorías. Si este es el caso, tenemos que 
#asegurarnos de pasar esta información a R...
#
#Supongamos que dirige un equipo de investigación formado por cinco analistas 
#de datos y que desea evaluar su rendimiento. Para ello, rastrea su velocidad, 
#evalúa a cada analista como "lento", "medio" o "rápido", y guarda los 
#resultados en speed_vector.


#Como primer paso, asigne a speed_vector un vector con 5 entradas, 
#una por cada analista. Cada entrada debe ser "lenta", "media" o "rápida". 
#Utilice la siguiente lista:
#  
#El analista 1 es medio,
#El analista 2 es lento,
#El analista 3 es lento,
#Analista 4 es medio y
#Analista 5 es rápido.
#No es necesario especificar todavía estos factores.



speed_vector <- c("medium", "slow", "slow", "medium", "fast")

## Factores ordenados (2)

#speed_vector debe convertirse en un factor ordinal ya que sus categorías 
#tienen un orden natural. Por defecto, la función factor() transforma 
#speed_vector en un factor no ordenado. Para crear un factor ordenado, 
#hay que añadir dos argumentos adicionales: ordenado y niveles.

#factor(some_vector,
#       ordered = TRUE,
#       levels = c("lev1", "lev2" ...))



#Al establecer el argumento ordenado como TRUE en la función factor(), 
#se indica que el factor está ordenado. Con el argumento niveles se dan 
#los valores del factor en el orden correcto.


#From speed_vector, create an ordered factor vector: factor_speed_vector. 
#Set ordered to TRUE, and set levels to c("slow", "medium", "fast").


# Convert speed_vector to ordered factor vector
factor_speed_vector <- factor(speed_vector,
                              ordered = "TRUE",
                              levels = c("slow", "medium", "fast"))

# Print factor_speed_vector
factor_speed_vector
summary(factor_speed_vector)


#Comparación de factores ordenados

#En un mal día de trabajo, el "analista de datos número dos" entra en su oficina 
#y empieza a quejarse de que el "analista de datos número cinco" está retrasando 
#todo el proyecto. Como sabes que el "analista de datos número dos" tiene la 
#reputación de ser un sabelotodo, primero decides comprobar si su afirmación es cierta.

#El hecho de que factor_speed_vector esté ahora ordenado nos permite comparar 
#diferentes elementos (los analistas de datos en este caso). Para ello, basta 
#con utilizar los conocidos operadores#


#Instructions

#Use [2] to select from factor_speed_vector the factor value for the second 
#data analyst. Store it as da2.

#Use [5] to select the factor_speed_vector factor value for the fifth data analyst. 
#Store it as da5.

#Check if da2 is greater than da5; simply print out the result. 
#Remember that you can use the > operator to check whether one element is larger than the other.


# Factor value for second data analyst
da2 <- factor_speed_vector[2]

# Factor value for fifth data analyst
da5 <- factor_speed_vector[5]

# Is data analyst 2 faster than data analyst 5?
da2 > da5

