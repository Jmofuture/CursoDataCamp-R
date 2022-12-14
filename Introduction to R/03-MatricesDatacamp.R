# Construct a matrix with 3 rows that contain the numbers 1 up to 9

#In the matrix() function:
#  
#The first argument is the collection of elements that R will arrange into the 
#rows and columns of the matrix. Here, we use 1:9 which is a shortcut for c(1, 2, 3, 4, 5, 6, 7, 8, 9).
#
#The argument byrow indicates that the matrix is filled by the rows. 
#If we want the matrix to be filled by the columns, we just place byrow = FALSE.
#
#The third argument nrow indicates that the matrix should have three rows.




matrix(1:9, byrow = TRUE, nrow = 3)
matrix(1:9, byrow = FALSE, nrow = 3)


# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, byrow = TRUE, nrow = 3)
star_wars_matrix




#Naming a matrix
#To help you remember what is stored in star_wars_matrix, you would like to add 
#the names of the movies for the rows. Not only does this help you to read the data, 
#but it is also useful to select certain elements from the matrix.
#
#Similar to vectors, you can add names for the rows and the columns of a matrix




# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Construct matrix
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, byrow = TRUE)

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region
colnames(star_wars_matrix) <- region

# Name the rows with titles
rownames(star_wars_matrix) <- titles

# Print out star_wars_matrix
star_wars_matrix



#Calculating the worldwide box office
#The single most important thing for a movie in order to become an instant legend 
#in Tinseltown is its worldwide box office figures.
#
#To calculate the total box office revenue for the three Star Wars movies, you have 
#to take the sum of the US revenue column and the non-US revenue column.
#
#In R, the function rowSums() conveniently calculates the totals for each row of a matrix.
#This function creates a new vector:
#  
#rowSums(my_matrix)


# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)

region <- c("US", "non-US")

titles <- c("A New Hope", 
            "The Empire Strikes Back", 
            "Return of the Jedi")

star_wars_matrix <- matrix(box_office, 
                           nrow = 3, byrow = TRUE,
                           dimnames = list(titles, region))

# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)
worldwide_vector


#Adding a column for the Worldwide box office
#In the previous exercise you calculated the vector that contained the worldwide
#box office receipt for each of the three Star Wars movies. However, this vector 
#is not yet part of star_wars_matrix.
#
#You can add a column or multiple columns to a matrix with the cbind() function, 
#which merges matrices and/or vectors together by column. For example:
#  
#big_matrix <- cbind(matrix1, matrix2, vector1 ...)


#Add worldwide_vector as a new column to the star_wars_matrix and assign the 
#result to all_wars_matrix. Use the cbind() function.

# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
region <- c("US", "non-US")
titles <- c("A New Hope", 
            "The Empire Strikes Back", 
            "Return of the Jedi")

star_wars_matrix <- matrix(box_office, 
                           nrow = 3, byrow = TRUE,
                           dimnames = list(titles, region))

# The worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix,worldwide_vector)


#Adding a row
#Just like every action has a reaction, every cbind() has an rbind(). 
#(We admit, we are pretty bad with metaphors.)


box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
region <- c("US", "non-US")
titles <- c("A New Hope", 
            "The Empire Strikes Back", 
            "Return of the Jedi")



box_office2 <- c(474.5,552.5,310.7,338.7,380.3,468.5)
titles2 <- c("The Phantom Menace",
                       "Attack of the Clones",
                       "Revenge of the Sith")


star_wars_matrix <- matrix(box_office, 
                           nrow = 3, byrow = TRUE,
                           dimnames = list(titles, region))


star_wars_matrix2 <- matrix(box_office2, 
                           nrow = 3, byrow = TRUE,
                           dimnames = list(titles2, region))


all_wars_matrix <- rbind(star_wars_matrix,star_wars_matrix2)





#The total box office revenue for the entire saga
#Just like cbind() has rbind(), colSums() has rowSums(). 
#Your R workspace already contains the all_wars_matrix that you constructed in 
#the previous exercise; type all_wars_matrix to have another look. 
#Let's now calculate the total box office revenue for the entire saga.


#Calculate the total revenue for the US and the non-US region and assign 
#total_revenue_vector. You can use the colSums() function.
#
#Print out total_revenue_vector to have a look at the results.


# all_wars_matrix is available in your workspace
all_wars_matrix

# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)
  
  # Print out total_revenue_vector

total_revenue_vector




#Selection of matrix elements
#Similar to vectors, you can use the square brackets [ ] to select one or multiple 
#elements from a matrix. Whereas vectors have one dimension, matrices have two dimensions. 
#You should therefore use a comma to separate the rows you want to select from the columns. For example:
#  
#my_matrix[1,2] selects the element at the first row and second column.
#my_matrix[1:3,2:4] results in a matrix with the data on the rows 1, 2, 3 and 
#columns 2, 3, 4.
#
#If you want to select all elements of a row or a column, no number is needed 
#before or after the comma, respectively:
#  
#my_matrix[,1] selects all elements of the first column.
#my_matrix[1,] selects all elements of the first row.


# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[,2]
non_us_all


# Average non-US revenue

mean(non_us_all)

# Select the non-US revenue for first two movies
non_us_some <-  all_wars_matrix[1:2,2]
non_us_some

# Average non-US revenue for first two movies

mean(non_us_some)


#A little arithmetic with matrices
#Similar to what you have learned with vectors, the standard operators 
#like +, -, /, *, etc. work in an element-wise way on matrices in R.
#
#For example, 2 * my_matrix multiplies each element of my_matrix by two.
#
#As a newly-hired data analyst for Lucasfilm, it is your job to find out how 
#many visitors went to each movie for each geographical area. You already have 
#the total revenue figures in all_wars_matrix. Assume that the price of a ticket 
#was 5 dollars. Simply dividing the box office numbers by this ticket price gives 
#you the number of visitors.


# Estimate the visitors
visitors <- all_wars_matrix / 5

# Print the estimate to the console
visitors



#A little arithmetic with matrices (2)
#Just like 2 * my_matrix multiplied every element of my_matrix by two, 
#my_matrix1 * my_matrix2 creates a matrix where each element is the product of 
#the corresponding elements in my_matrix1 and my_matrix2.
#
#After looking at the result of the previous exercise, big boss Lucas points out 
#that the ticket prices went up over time. He asks to redo the analysis based on 
#the prices you can find in ticket_prices_matrix (source: imagination).
#
#Those who are familiar with matrices should note that this is not the standard 
#matrix multiplication for which you should use %*% in R.
