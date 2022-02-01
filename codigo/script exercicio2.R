library(readxl)
exercicio2 <- read_excel("./dados/exercicio2.xls")

## medidas de posicao:
exercicio2_media <- mean(exercicio2$Casas)
print(paste("Media da quantidade de casas por quarteirao = ", exercicio2_media))
exercicio2_mediana <- median(exercicio2$Casas)
print(paste("Mediana da quantidade de casas por quarteirao = ", exercicio2_mediana))

## medidas de dispersao:
exercicio2_variancia <- var(exercicio2$Casas)
print(paste("Variancia da quantidade de casas por quarteirao = ", exercicio2_variancia))
exercicio2_desvioPadrao <- sd(exercicio2$Casas)
print(paste("Desvio padrao da quantidade de casas por quarteirao = ", exercicio2_desvioPadrao))

boxplot(exercicio2, col = "red", horizontal = TRUE, xlab = "Quantidade", ylab = "Casas por quarteirao")