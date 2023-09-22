#Write an R-script to calculate the compound interest of the given P, T, R.
# Function to calculate compound interest
calculate_compound_interest <- function(principal, rate, time) {
  amount <- principal * (1 + rate/100)^time
  interest <- amount - principal
  return(interest)
}

# Read the principal amount, annual interest rate, and time period from the user
principal <- readline(prompt="Enter the principal amount: ")
principal <- as.numeric(principal)

rate <- readline(prompt="Enter the annual interest rate (%): ")
rate <- as.numeric(rate)

time <- readline(prompt="Enter the time period (years): ")
time <- as.numeric(time)

# Check if the inputs are valid numbers
if (!is.na(principal) && !is.na(rate) && !is.na(time)) {
  # Calculate the compound interest
  interest <- calculate_compound_interest(principal, rate, time)
  
  # Print the calculated interest
  cat("Compound Interest:", interest, "\n")
} else {
  cat("Invalid input. Please enter valid numbers for principal, rate, and time.\n")
}
