# Function to convert paisa to rupee and paisa format
  convert_paisa_to_rupee_paisa <- function(paisa) {
    rupee <- floor(paisa / 100)
    remaining_paisa <- paisa %% 100
    return(list(rupee = rupee, paisa = remaining_paisa))
  }
  
  # Read the amount in paisa from the user
  paisa <- readline(prompt="Enter the amount in paisa: ")
  paisa <- as.numeric(paisa)
  
  # Check if the input is a valid number
  if (!is.na(paisa)) {
    # Convert paisa to rupee and paisa format
    conversion <- convert_paisa_to_rupee_paisa(paisa)
    
    # Print the converted amount in rupee and paisa format
    cat("Converted amount:", conversion$rupee, "Rupee and", conversion$paisa, "paisa.\n")
  } else {
    cat("Invalid input. Please enter a valid number for the amount in paisa.\n")
  }
  
