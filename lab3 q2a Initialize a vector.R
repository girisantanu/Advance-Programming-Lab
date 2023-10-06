# Initialize a vector
my_vector <- c(10, 20, 30, 40, 50)

# Element to search for
search_element <- 30

# Search for the element in the vector
if (search_element %in% my_vector) {
  index <- which(my_vector == search_element)
  cat("Element", search_element, "found at index", index, "\n")
} else {
  cat("Element", search_element, "not found in the vector.\n")
}
