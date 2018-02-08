data <- c(1,2,3,4,5,6)

a <- matrix(data, nrow = 2)
print(a[1,])

b <- matrix(3:8, nrow = 2)
print(b)

# column bind -- >
c <- cbind(1:3, 1:3)
print(c)

#row bind -- >
d <- rbind(1:4, 5:8)
rownames(d) <- c('first', 'second')
colnames(d) <- c('oneC', 'twoC', 'threeC', 'fourC')
print(d)

# Matrix Arithmetic -- >
colSums(d) -> sum_of_cols
rowSums(d) -> sum_of_rows
cat('sum operator - > ', sum_of_cols, sum_of_rows);

# Matrix Multiplication -- >

a1 <- c(1,2,3,4,5,6)

a_matrix <- matrix(a1, nrow=2, ncol=3)
b_matrix <- matrix(a1, nrow=3, ncol=2)

# mat_eleWise_mul <- a_matrix * b_matrix
# cat('element wise matrix - > ', mat_eleWise_mul)

mat_mul <- a_matrix %*% b_matrix
cat('normal matrix multiplication - > ', mat_mul)