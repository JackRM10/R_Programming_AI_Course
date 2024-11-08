# Step 1: Set up the data
# Load the dataset
data("mtcars")

# View the structure of the data
str(mtcars)

# Select variables of interest
data <- mtcars[, c("mpg", "hp", "wt")]
head(data)

#Step 2: Split the data into training and testing sets
set.seed(123)  # For reproducibility

# Split the data
sample_index <- sample(1:nrow(data), size = 0.7 * nrow(data))
train_data <- data[sample_index, ]
test_data <- data[-sample_index, ]

# Step 3: Train the linear regression model
# Train the model
model <- lm(mpg ~ hp + wt, data = train_data)

# View the model summary
summary(model)

# Step 4: Make predictions on the test set
# Predict on the test data
predictions <- predict(model, newdata = test_data)

# View the predictions
predictions

# Step 5: Evaluate the model
# Calculate Mean Squared Error
mse <- mean((test_data$mpg - predictions)^2)
print(paste("Mean Squared Error:", mse))

