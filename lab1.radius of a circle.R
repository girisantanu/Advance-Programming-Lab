# Q.1) Write an R-script to enter the radius of a circle, then calculate the area and circumference of the circle.
# Function to calculate the area of a circle
calculate_circle_area <- function(radius) {
  return(pi * radius^2)
}

# Function to calculate the circumference of a circle
calculate_circle_circumference <- function(radius) {
  return(2 * pi * radius)
}

# Read the radius from the user
radius <- readline(prompt="Enter the radius of the circle: ")
radius <- as.numeric(radius)

# Check if the input is a valid number
if (!is.na(radius)) {
  # Calculate the area and circumference
  area <- calculate_circle_area(radius)
  circumference <- calculate_circle_circumference(radius)
  
  # Print the results
  cat("Area of the circle:", area, "\n")
  cat("Circumference of the circle:", circumference, "\n")
} else {
  cat("Invalid input. Please enter a valid number for the radius.\n")
}
