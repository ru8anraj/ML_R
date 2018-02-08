# This code example predicts the mileage of the car by considering few factors

mileage <- c(23, 18.5, 19.3, 21.5, 17)
cc <- c(1010, 1280, 1280, 795, 1461)
hp <- c(88, 94, 95, 84, 108)
wt <- c(1200, 1350, 1400, 850, 1550)

car_data <- data.frame(mileage, cc, hp, wt, stringsAsFactors=FALSE)

# Creates a Relationship b/w mileage and remaining data
relation <- lm(mileage~cc+hp+wt, data=car_data)

print(summary(relation))

# Extracting the co-efficient values
b0 <- coef(relation)[1]
b1 <- coef(relation)[2]
b2 <- coef(relation)[3]
b3 <- coef(relation)[4]

cat('b0 : ', b0, '\n', 'b1 : ',b1, '\n', 'b2 : ',b2, '\n', 'b3 : ',b3)

# Applying co-efficient values to formulate
# mileage_prediction_formula = b0 + (b1*cc) + (b2*hp) + (b3*wt)

# Injecting the new data for prediction
new_data <- data.frame(cc=1000, hp=95, wt=1008)

mileage_prediction <- predict(relation, new_data)

print(mileage_prediction)

# png('carMileage_prediction.jpg')
# plot(mileage, cc, hp, wt)
# dev.off()
