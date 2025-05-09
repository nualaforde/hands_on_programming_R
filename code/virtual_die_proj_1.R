# practice arithmetic
1 + 1
100 : 130

# create a virtual die
die <- 1:6

# arithmetic with die
die - 1
die / 2
die * die

# simulate dice role for 2 dice and saves to object dice
dice <- sample(x = die, size = 2)
dice
# sums the 2 dice rolls
sum(dice)

# create a function for rolling the dice called ""roll"
roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}

roll()

# example c function for concatenating and then qplot for producting scatterplot
x <- c(-1, -0.8, -0.6, -0.4, -0.2, 0, 0.2, 0.4, 0.6, 0.8, 1)
x
## -1.0 -0.8 -0.6 -0.4 -0.2  0.0  0.2  0.4  0.6  0.8  1.0

y <- x^3
y
## -1.000 -0.512 -0.216 -0.064 -0.008  0.000  0.008
##  0.064  0.216  0.512  1.000

qplot(x, y)

# create example histogram
x <- c(1, 2, 2, 2, 3, 3)
qplot(x, binwidth = 1)
x2 <- c(1, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 4)
qplot(x2, binwidth = 1)
x3 <- c(0, 1, 1, 2, 2, 2, 3, 3, 4)
qplot(x3, binwidth = 1)

# replicate 2 dice roll 10 times
many_rolls <- replicate(10000, roll())

# plot histogram of repliacated dice roll
qplot(many_rolls, binwidth = 1)

# create a new function for rolling the dice called "weighted_roll"
# where the probability of rolling a 6 is 3/8 and every other number is 1/2
weighted_roll <- function() {
         die <- 1:6
         dice <- sample(die, size = 2, replace = TRUE, prob = c(1/8, 1/8, 1/8, 1/8, 1/8, 3/8))
         sum(dice)
}
weighted_roll()
many_weighted_rolls <- replicate(10000, weighted_roll())
qplot(many_weighted_rolls, binwidth = 1)
       
       
