# Challenge 6-------------------------------------------------------------------
# Load the iris dataset
data(iris)

# Summary statistics for the iris dataset
summary(iris)

# Scatter plot of Sepal Length vs Sepal Width
plot(iris$Sepal.Length, iris$Sepal.Width,
     main = "Scatter plot of Sepal Length vs Sepal Width",
     xlab = "Sepal Length",
     ylab = "Sepal Width",
     col = iris$Species,  # Color points by species
     pch = 19)            # Use filled circles for points

# Add a legend to the plot
legend("topright", legend = levels(iris$Species), col = 1:3, pch = 19)
#-------------------------------------------------------------------------------
