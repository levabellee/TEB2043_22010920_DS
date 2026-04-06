# Vector V1
V1 <- c(2,3,1,5,4,6,8,7,9)

# Create 3x3 Matrix-1
Matrix1 <- matrix(V1, nrow = 3, byrow = TRUE)
rownames(Matrix1) <- c("R1","R2","R3")
colnames(Matrix1) <- c("C1","C2","C3")

# Transpose to create Matrix-2
Matrix2 <- t(Matrix1)
rownames(Matrix2) <- c("R1","R2","R3")
colnames(Matrix2) <- c("C1","C2","C3")

# Display matrices
cat("Matrix 1:\n")
print(Matrix1)
cat("Matrix 2 (Transposed):\n")
print(Matrix2)

# Matrix operations (Addition)
cat("\nAddition:\n")
print(Matrix1 + Matrix2)

# Matrix operations (Subtraction)
cat("\nSubtraction:\n")
print(Matrix1 - Matrix2)

# Matrix operations (Multiplication)
cat("\nMultiplication (element-wise):\n")
print(Matrix1 * Matrix2)

# Matrix operations (Division)
cat("\nDivision (element-wise):\n")
print(Matrix1 / Matrix2)
