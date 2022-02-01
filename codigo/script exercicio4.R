library(readxl)
exercicio4 <- read_excel("./dados/exercicio4.xls")

##boxplot(exercicio4$Salários, col = "green", horizontal = TRUE, xlab = "x Salarios minimos", ylab = "Salarios")
hist(exercicio4$Salários, col = "green", xlab = "Salarios (x salarios minimos)", ylab = "Frequencia", main = "Histograma de salários")
