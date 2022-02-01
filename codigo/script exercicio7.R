library(readxl)
exercicio7 <- read_excel("./dados/exercicio7.xls")

barplot(exercicio7$Atendimento, col = "bisque", names.arg = exercicio7$Áreas, las = 2, cex.names = 0.7, main = "Atendimentos por area", ylab = "Quantidade de atendimentos")
