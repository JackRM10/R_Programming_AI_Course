# vERSION 1 --------------------------------------------------------------------
# Define a BST node
bst_node <- function(value = NULL, left = NULL, right = NULL) {
  list(value = value, left = left, right = right)
}

# Insert a value into the BST
insert_bst <- function(root, value) {
  if (is.null(root$value)) {
    root$value <- value
  } else if (value < root$value) {
    if (is.null(root$left)) {
      root$left <- bst_node(value)
    } else {
      root$left <- insert_bst(root$left, value)
    }
  } else if (value > root$value) {
    if (is.null(root$right)) {
      root$right <- bst_node(value)
    } else {
      root$right <- insert_bst(root$right, value)
    }
  }
  return(root)
}

# Search for a value in the BST
search_bst <- function(root, value) {
  if (is.null(root)) {
    return(FALSE)
  }
  if (value == root$value) {
    return(TRUE)
  } else if (value < root$value) {
    return(search_bst(root$left, value))
  } else {
    return(search_bst(root$right, value))
  }
}

# In-order traversal of the BST (returns sorted values)
inorder_traversal <- function(root) {
  if (is.null(root)) {
    return(c())
  }
  c(inorder_traversal(root$left), root$value, inorder_traversal(root$right))
}

# Create an empty BST
bst <- bst_node()

# Insert values into the BST
values <- c(5, 3, 8, 2, 4, 7, 9)
for (value in values) {
  bst <- insert_bst(bst, value)
}

# Search for a value in the BST
print(search_bst(bst, 4)) # Should return TRUE
print(search_bst(bst, 10)) # Should return FALSE

# Get sorted values through in-order traversal
sorted_values <- inorder_traversal(bst)
print(sorted_values) # Should print: 2 3 4 5 7 8 9
##----------------------------------------------------------------------------##
##----------------------------------------------------------------------------##
# VERSION 2 --------------------------------------------------------------------
# Define a function to create a BST node
createNode <- function(key) {
   list(key = key, left = NULL, right = NULL)
} 

# Function to insert a key into the BST
insertNode <- function(root, key) {
  if (is.null(root)) {
    return (createNode(key))
  }
  
  if (key < root$key) {
    root$left <- insertNode(root$left, key)
  } else if (key > root$key) {
    root$right <- insertNode(root$right, key)
  }
  
  return (root)
}

#Function to search for a key in the BST
searchKey <- function(root, key) {
  if (is.null(root) || root$key == key) {
    return (root)
  }
  
  if (key < root$key) {
    return (searchKey(root$left, key))
  } else {
    return (searchKey(root$right, key))
  }
}

# Test the Binary Search Tree
bst <- NULL #Initialize an empty BST

# Insert nodes
bst <- insertNode(bst, 5)
bst <- insertNode(bst, 3)
bst <- insertNode(bst, 8)
bst <- insertNode(bst, 2)
bst <- insertNode(bst, 4)
bst <- insertNode(bst, 7)

#Search for a key
foundNode <- searchKey(bst, 4)
if (!is.null(foundNode)) {
  print(foundNode$key) # Print the key of the found node (4)
} else {
  print("Key not found")
}

notFoundNode <- searchKey(bst, 10)
if (is.null(notFoundNode)) {
  print("Key not found") # Print if key is not found
}
##----------------------------------------------------------------------------##
##----------------------------------------------------------------------------##

















