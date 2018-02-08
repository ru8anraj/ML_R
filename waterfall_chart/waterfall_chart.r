data <- read.csv('./data/waterfall.csv')

png('waterfall_chart.jpg')

barplot(data)

dev.off()
