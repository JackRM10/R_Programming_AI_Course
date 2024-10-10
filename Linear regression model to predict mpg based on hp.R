# Challenge 7-------------------------------------------------------------------

# Load the mtcars dataset
data(mtcars)

# Fit a linear regression model to predict mpg based on hp
model <- lm(mpg ~ hp, data = mtcars)

# Print the summary of the linear regression model
summary(model)

# Predict the mpg for a car with 150 horsepower
new_car <- data.frame(hp = 150)
predicted_mpg <- predict(model, new_car)

# Print the predicted mpg
print(paste("Predicted mpg for a car with 150 horsepower:", round(predicted_mpg, 2)))
#-------------------------------------------------------------------------------
