library("xlsx")

data <- read.xlsx('./data/PAR WMG.xlsx', sheetIndex = 1)

print(data)