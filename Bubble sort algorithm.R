bubble_sort <- function(x) {
  n <- length(x)
  # Loop through all elements of x
  for (i in 1:(n-1)) {
    # Last i elements are already sorted
    for (j in 1:(n-i)) {
      if (x[j] > x[j+1]) {
        # Swap if the element is greater than the next element
        temp <- x[j]
        x[j] <- x[j+1]
        x[j+1] <- temp
      }
    }
  }
  return(x)
}
#Numbers to sort
my_vector <- c(77, 46, 32, 19, 26)
sorted_vector <- bubble_sort(my_vector)
print(sorted_vector)