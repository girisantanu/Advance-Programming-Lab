# Q.4) Write an R-script to enter two numbers from the keyboard, then swap
them without using 3rd variable.
# Function to swap two numbers without using a third variable
swap_numbers <- function(x, y) {
  x <- x + y
  y <- x - y
  x <- x - y
  return(list(x = x, y = y))
}

# Read two numbers from the user
num1 <- readline(prompt="Enter the first number: ")
num1 <- as.numeric(num1)

num2 <- readline(prompt="Enter the second number: ")
num2 <- as.numeric(num2)

# Check if the inputs are valid numbers
if (!is.na(num1) && !is.na(num2)) {
  # Call the swap_numbers function
  swapped <- swap_numbers(num1, num2)
  
  # Print the swapped numbers
  cat("After swapping:\n")
  cat("First number:", swapped$x, "\n")
  cat("Second number:", swapped$y, "\n")
} else {
  cat("Invalid input. Please enter valid numbers.\n")
}
