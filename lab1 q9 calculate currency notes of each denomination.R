#A cashier has currency notes of denominations 10, 50 and 100. If the amount to be withdrawn is input through the keyboard in hundreds, write an R-script to find the total number of currency notes of each denomination the cashier will have to give to the withdrawer.
# Function to calculate currency notes of each denomination
calculate_currency_notes <- function(amount_hundreds) {
  # Convert the amount in hundreds to actual amount
  amount <- amount_hundreds * 100
  
  # Calculate the number of currency notes of each denomination
  note_100s <- floor(amount / 100)
  remaining_amount <- amount %% 100
  note_50s <- floor(remaining_amount / 50)
  note_10s <- remaining_amount %% 50
  
  return(list(note_100s = note_100s, note_50s = note_50s, note_10s = note_10s))
}

# Read the amount in hundreds from the user
amount_hundreds <- readline(prompt="Enter the amount to be withdrawn in hundreds: ")
amount_hundreds <- as.numeric(amount_hundreds)

# Check if the input is a valid number
if (!is.na(amount_hundreds)) {
  # Calculate currency notes of each denomination
  notes <- calculate_currency_notes(amount_hundreds)
  
  # Print the number of currency notes of each denomination
  cat("Currency Notes:\n")
  cat("100s:", notes$note_100s, "\n")
  cat("50s:", notes$note_50s, "\n")
  cat("10s:", notes$note_10s, "\n")
} else {
  cat("Invalid input. Please enter a valid number for the amount in hundreds.\n")
}
