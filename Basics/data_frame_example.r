name <- c('Athul', 'Rubanraj', 'Mohan', 'Srini')
name1 <- c('P', 'R', 'S', 'D')
age <- c(25, 23, 36, 23)
child <- c(FALSE, FALSE, TRUE, TRUE)

df <- data.frame(name, name1, age, child, stringsAsFactors = FALSE)

print(df)

# Adding a new column to the data frame
height <- c(170, 179, 175, 176)

df$height <- height
print(df)

# Adding a Row to the data frame
prateek <- data.frame(name='Prateek', name1='P', age=23, child=FALSE, height=177)

df <- rbind(df, prateek)
print(df)
print(typeof(df))

# Sorting using age as primary and height as secondary
print(df[order(df$age, df$height), ])

# Selecting particular column
print(df$name1)
