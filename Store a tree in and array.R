# Create a Tree and store in an Array

# Initialize the tree as a vector
tree <- c()

# Function to insert a node in the tree
insert_node <- function(value) {
  # Append the value to the tree vector
  tree <<- c(tree, value)
}

# Insert nodes into the tree
insert_node(5)
insert_node(3)
insert_node(8)
insert_node(2)
insert_node(4)
insert_node(7)

# Print the tree
print(tree)
