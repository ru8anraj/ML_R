data <- c(1, 2, 3, 4, 5, 6)

a <- matrix(data, nrow=2, ncol=3)
b <- matrix(data, nrow=3, ncol=2)

print('Matrix element-wise multiplication')

mat_eleWise_mul <- a * b
print(mat_eleWise_mul)

print('Matrix Multipication')

mat_mul = a %*% b
print(mat_mul)