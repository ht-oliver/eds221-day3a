# Basic Statement

# create an object with value
hamburger <- 2.4

# write a short if statement
if (hamburger > 2) {
  print("That's a hamburger!")
}

#An example with strings
my_ships <- c("Decimator", "Super Dragon 1", "Super Dragon 2", "Mega Dragon X")

stringr::str_detect(my_ships, pattern = "Dragon")


phrase <- "They have boarded my ship"

if (stringr::str_detect(phrase, "boarded")) {
  print("intiate security protocol")
}


# Basic if-else statement

honk <- 89.1
if (honk>60) { # define size of loud honk
  print("loud honk")
} else {
  print("quiet honk")
}

# Another example with strings
drink <- "I love pepsi-soda!"

if (stringr::str_detect(string = drink, pattern = "soda")) {
  print("god I love soda")
} else {
  print("where is my darn soda-cola?")
}


#More options with if-else statements
marmot <- 3.8

if (marmot < 0.5) {
  print("small")
} else if (marmot >= 0.5 & marmot < 3) { #defining mediium marmots
  print("medium")
} else {
    print ("large")
}

# USe the switch function to write complicated if else statements
species <- "mouse"

switch(species,
       "cat" = print("meow"), #same as writing a if statement
       "mouse" = print ("squeak"), #same as else if
       "dog" = print ("woof"), #same as final else
       )

# Next week we'll do dplyr::case_when()

#Writing for loops

duck_names <- c("Billy", "Waddle", "Fluffy", "Dr. Duck")
print(paste("The duck that got water in the living room is", duck_names[1]))
print(paste("The duck that got water in the living room is", duck_names[2]))
print(paste("The duck that got water in the living room is", duck_names[3]))
print(paste("The duck that got water in the living room is", duck_names[4]))

# version with a variable that I can update
quackler <- duck_names[1]

print(paste("The duck that got water in the living room is", duck_names[quackler]))

# convert to a for loop
for (quackler in duck_names) {
  print(paste("The duck that got water in the living room is", quackler))
}


# Another loop example
mass <- seq(from = 0, to = 3, b =0.5)

i <- mass[1]
i
new_val <- i + 2 #adding 2 to each value
print(new_val) #print new values

# Write into a for loop
for (i in mass) {
  new_val <- i + 2 
  print(new_val)
}


# PRactice same thing but with indexing
i <- 1
new_val <- mass[i] + 2
print(new_val)


# Make it a for loop

for (i in 1:length(mass)) { # defining iterator using seq_along
  i <- 1
  new_val <- mass[i] + 2
  print(new_val)
}

for (i in seq_along(mass)) { # defining iterator using seq_along
  i <- 1
  new_val <- mass[i] + 2
  print(new_val)
}


#God damn I'm hungry
tree_height <- c( 1, 2, 6, 10)

tree_height[1] + tree_height[2]

# convert into a generalizable expression
i <- 1
val <- tree_height[i] + tree_height[i+1]
print(val)

# convert into a for loop
# test out creating the sequence
seq_along(tree_height)

for (i in seq_along(tree_height)) {
  val <- tree_height[i] + tree_height[i + 1]
  print(val)
}

# For loops with conditional statements

# create a vector of things

fruit <- c("apple", "clementine", "banana", "banana", "grapes")

for ( i in seq_along(fruit)) {
  if (fruit[i] == "banana") {
    print("I love bananas")
  } else {
    print("These are other fruit")
  }
}

# Another for loop example with conditional statements

# fruit species
species <- c("dog", "elephant", "goat", "dog", "dog", "elephant")

# and their respective ages in humans years
age_human <- c(3, 8, 4, 6, 12, 18)

# convert ages to "animals years" using the following:
# 1 human years = 7 dogs years
# 1 human year = 0.88 in elephant years
# 1 human year = 4.7 goat years

# allocate space for our output
animal_ages <- vector(mode = "numeric", length = length(species))


for (i in seq_along(species)){
if (species[i] == "dog") {
  animal_age <- age_human[i] * 7
} else if (species [i] == "elephant") {
  animal_age <- age_human[i] * 0.88
} else if (species[i] == "goat") {
  animal_age <- age_human[i] * 4.7
}
  animal_ages[i] <- animal_age #populate empty animal ages vector
}

animal_age

# Another example of storing an output

tigers <- c(29, 34, 82)
lions <- c(2, 18, 6)


big_cats <- vector(mode = "numeric", length = length(tigers))

for (i in seq_along(tigers)) {
  total_cats <- tigers[i] + lions[i]
  big_cats[i] <- total_cats}
big_cats

#____ 10 min break, INTERACTIVE SESSION 2 ____

# for loops to iterate across columns of data frame

# create vector to store values
mean_mtcars <- vector(mode = "numeric", length = ncol(mtcars))

for (i in 1:ncol(mtcars)) {
  mean_val <- mean(mtcars[[i]], na.rm = TRUE)
  mean_mtcars[i] <- mean_val
}

mean_mtcars

# A for loop for over columns with a condition

library(palmerpenguins)

for (i in seq_along(penguins)) {
  if (is.numeric(penguins[[i]])) {
    penguin_median <- median(penguins[[i]], na.rm = TRUE)
    print(penguin_median)
  } else {
    print("data not numeric")
  } 
}


# Functional programming

# apply() function iterates over columns or rows

# rewrite our for loop for finding mean values of the columns in mtcars
# In Margin argument, 1 is for rows 2 is for columns
apply(X = mtcars, MARGIN = 2, FUN = mean)
# same as saying apply the function mean across the columns in mtcars

library(tidyverse)

penguins %>% 
  group_by(species) %>% 
  summarise(across(where(is.numeric), mean, na.rm = TRUE))




