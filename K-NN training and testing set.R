# Challenge 7-------------------------------------------------------------------
# Load the iris dataset
data(iris)

# Model Evaluation and Performance Metrics

# Set a random seed for reproducibility
set.seed(123)

# Generate random indices for training set
train_indices <- sample(1:nrow(iris), 0.7 * nrow(iris))

# Create the training set
train_data <- iris[train_indices, ]

# Create the testing set
test_data <- iris[-train_indices, ]

library(class)

# Train a k-NN classifier
model <- knn(train = train_data[, -5], test = test_data[, -5], cl = train_data[, 5], k = 3)

# Calculate the accuracy
accuracy <- sum(model == test_data[, 5 ]) / nrow(test_data)

# Print the accuracy
cat("The accuracy of the k-NN classifier on the testing set is:", accuracy)
#-------------------------------------------------------------------------------