# This example code is to predict the weight of the person when height is known

height <- c(152, 166, 174, 179, 183, 172)
weight <- c(62, 64, 85, 72, 78, 68)

# create relationship between height and weight
relation <- lm(weight~height)

print(summary(relation))

# New data for which the weight is to be predicted
height_a <- data.frame(height=166)

# Prediction for the new data
result <- predict(relation, height_a)

# Prints the weight of the new person
print(result)

# Plotting the relation b/w height and weight
png('height_weight.jpg')
plot(weight, height, col='red', main='Height-Weight Relation', abline(lm(height~weight)), xlab='weight in KG', ylab='height in cms')
dev.off()
