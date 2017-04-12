# Exercise 3: Working with Data Frames

# Load R's "USPersonalExpenditure" dataest using the `data()` function
data("USPersonalExpenditure")

# The variable USPersonalExpenditure is now accessible to you. Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme
data.frame(USPersonalExpenditure)

# Create a new variable by passing the USPersonalExpenditure to the data.frame function
set <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
colnames(set)

# Why are they so strange?

#Because of the x's in front of the years


# What are the row names of your dataframe?
rownames(set)

# Create a column `category` that is equal to your rownames
set[["category"]] <- rownames(set)

# How much money was spent on personal care in 1940?
personal.care.1940 <- set['Personal Care', 'X1940']

# How much money was spent on Food and Tobacco in 1960
Food.Tobacco.1940 <- set["Food and Tobacco", "X1940"]

# What was the highest expenditure category in 1960?
high.1960 <- max(set[["X1960"]])

### Bonus ###

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year

# Using your function, determine the highest spending category of each year
high.category <- function(year) {
  full.year <- paste0("x", year)
  return(max(set[[full.year, "Category"]]))
}

high.category("1940")

# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
