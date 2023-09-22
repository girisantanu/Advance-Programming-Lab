#Write an R-script to enter the temperature in Celsius and convert it into Fahrenheit.
# Function to convert Celsius to Fahrenheit
convert_celsius_to_fahrenheit <- function(celsius) {
  return((celsius * 9/5) + 32)
}

# Read the temperature in Celsius from the user
celsius <- readline(prompt="Enter the temperature in Celsius: ")
celsius <- as.numeric(celsius)

# Check if the input is a valid number
if (!is.na(celsius)) {
  # Convert Celsius to Fahrenheit
  fahrenheit <- convert_celsius_to_fahrenheit(celsius)
  
  # Print the converted temperature
  cat("Temperature in Fahrenheit:", fahrenheit, "\n")
} else {
  cat("Invalid input. Please enter a valid number for the temperature.\n")
}
