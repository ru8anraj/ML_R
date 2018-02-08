data <- c(10, 20)

names(data) = c('India', 'South Africa')

print(data)

###############

earnings <- c(750, 750, 750, 750, 750)
expense <- c(245, 670, 154, 320, 175)
days <- c('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday')

names(earnings) <- days
names(expense) <- days

savings <- earnings - expense

print(savings)

total_savings <- sum(savings)

cat('Total Savings - > ', total_savings)