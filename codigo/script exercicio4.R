library(readxl)
exercicio4 <- read_excel("./dados/exercicio4.xls")

exercicio4_tabelaFrequencias = table(exercicio4$Salários)
hist(exercicio4$Salários, col = "green", xlab = "Salarios (x salarios minimos)", ylab = "Frequencia", main = "Histograma de salários")