Q.10) Ramesh’s basic salary is input through the keyboard. His dearness allowance is 40% of basic salary, and house rent allowance is 20% of basic salary. Write an R-script to calculate his gross salary.
# Function to calculate gross salary
calculate_gross_salary <- function(basic_salary) {
  dearness_allowance <- 0.4 * basic_salary
  house_rent_allowance <- 0.2 * basic_salary
  gross_salary <- basic_salary + dearness_allowance + house_rent_allowance
  return(gross_salary)
}

# Read Ramesh's basic salary from the user
basic_salary <- readline(prompt="Enter Ramesh's basic salary: ")
basic_salary <- as.numeric(basic_salary)

# Check if the input is a valid number
if (!is.na(basic_salary)) {
  # Calculate gross salary using the function
  gross_salary <- calculate_gross_salary(basic_salary)
  
  # Print the calculated gross salary
  cat("Gross Salary:", gross_salary, "\n")
} else {
  cat("Invalid input. Please enter a valid number for Ramesh's basic salary.\n")
}
