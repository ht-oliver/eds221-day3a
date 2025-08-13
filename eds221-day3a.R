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
       "mouse" = print ("squeak"),
       "dog" = print ("woof")
       )
