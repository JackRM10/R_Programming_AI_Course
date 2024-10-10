# Challenge 8-------------------------------------------------------------------
# Load the mtcars dataset
data(mtcars)

# Standardize the dataset (since PCA is affected by the scale of the variables)
mtcars_scaled <- scale(mtcars)

# Perform PCA (excluding the non-numeric columns if any)
pca_result <- prcomp(mtcars_scaled, center = TRUE, scale. = TRUE)

# Summary of the PCA result
summary(pca_result)

# Extract the first two principal components
pca_data <- as.data.frame(pca_result$x)

# Scatter plot of the first two principal components
plot(pca_data$PC1, pca_data$PC2, 
     main = "Scatter plot of the first two principal components",
     xlab = "Principal Component 1",
     ylab = "Principal Component 2",
     pch = 19,    # Use filled circles for points
     col = "blue") # Color points blue

# Add labels for the car names
text(pca_data$PC1, pca_data$PC2, labels = rownames(mtcars), pos = 4, cex = 0.7)
#-------------------------------------------------------------------------------