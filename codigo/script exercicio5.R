library(readxl)

exercicio5 <- read_excel("./dados/exercicio5.xls")

barplot(exercicio5$`Nº pessoas`, names.arg = exercicio5$Marcas, col = "cyan", main = "Preferencia por Antitermico", ylab = "Quantidade de pessoas", xlab = "Marca preferida")
