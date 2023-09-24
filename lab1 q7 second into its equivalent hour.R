#Write an R-script to convert given second into its equivalent hour,minute and second as per the following format. Example. 7560 second = 2 Hour, 27 Minute and 40 Second.


convert_seconds_to_hms <- function(seconds) {
  hours <- floor(seconds / 3600)
  remaining_seconds <- seconds %% 3600
  minutes <- floor(remaining_seconds / 60)
  seconds <- remaining_seconds %% 60
  return(list(hours = hours, minutes = minutes, seconds = seconds))
}

# Read the time in seconds from the user
seconds <- readline(prompt="Enter the time in seconds: ")
seconds <- as.numeric(seconds)

# Check if the input is a valid number
if (!is.na(seconds)) {
  # Convert seconds to hours, minutes, and seconds format
  conversion <- convert_seconds_to_hms(seconds)
  
  # Print the converted time in hours, minutes, and seconds format
  cat("Converted time:", conversion$hours, "Hour,", conversion$minutes, "Minute,", conversion$seconds, "Second.\n")
} else {
  cat("Invalid input. Please enter a valid number for the time in seconds.\n")
}
