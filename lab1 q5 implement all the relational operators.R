#Q.5) Write an R-script to enter two numbers and implement all the relational operators on that two numbers.
# Function to apply all relational operators on two numbers
apply_relational_operators <- function(num1, num2) {
  result <- c(
    less_than = num1 < num2,
    less_than_or_equal = num1 <= num2,
    greater_than = num1 > num2,
    greater_than_or_equal = num1 >= num2,
    equal_to = num1 == num2,
    not_equal_to = num1 != num2
  )
  return(result)
}

# Read two numbers from the user
num1 <- readline(prompt="Enter the first number: ")
num1 <- as.numeric(num1)

num2 <- readline(prompt="Enter the second number: ")
num2 <- as.numeric(num2)

# Check if the inputs are valid numbers
if (!is.na(num1) && !is.na(num2)) {
  # Apply all relational operators using the function
  results <- apply_relational_operators(num1, num2)
  
  # Print the results
  cat("Relational Operators:\n")
  cat("Less than:", results[1], "\n")
  cat("Less than or equal:", results[2], "\n")
  cat("Greater than:", results[3], "\n")
  cat("Greater than or equal:", results[4], "\n")
  cat("Equal to:", results[5], "\n")
  cat("Not equal to:", results[6], "\n")
} else {
  cat("Invalid input. Please enter valid numbers.\n")
}
