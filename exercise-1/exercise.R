# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored the first 4 games of last season
# Hint: (google "Seahawks scores 2016")
scores <- c(12,20,12, 3)

# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
opponents.scores <- c(10,9,18,17)

# Combine your two vectors into a dataframe
points <- data.frame(scores, opponents.scores)

# Create a new column "diff" that is the difference in points
points['dif'] <- c(scores - opponents.scores)

# Create a new column "won" which is TRUE if the Seahawks wom
points['won'] <- c(difference > 0)

# Create a vector of the opponents
opponents <- c('Dolphins','Rams','49ers','Jets')

# Assign your dataframe rownames of their opponents
points['opponents'] <- opponents