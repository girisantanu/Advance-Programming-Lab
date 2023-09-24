#Write an R-script to convert a quantity in meter entered through keyboard into its equivalent kilometer & meter as per the following format. Example - 2430 meter = 2 Km and 430 meters.
# Function to convert meters to kilometers and meters format
convert_meters_to_km_meters <- function(meters) {
  kilometers <- floor(meters / 1000)
  remaining_meters <- meters %% 1000
  return(list(kilometers = kilometers, meters = remaining_meters))
}

# Read the quantity in meters from the user
meters <- readline(prompt="Enter the quantity in meters: ")
meters <- as.numeric(meters)

# Check if the input is a valid number
if (!is.na(meters)) {
  # Convert meters to kilometers and meters format
  conversion <- convert_meters_to_km_meters(meters)
  
  # Print the converted quantity in kilometers and meters format
  cat("Converted quantity:", conversion$kilometers, "Km and", conversion$meters, "meters.\n")
} else {
  cat("Invalid input. Please enter a valid number for the quantity in meters.\n")
}
