library(readxl)

## Leitura dos dados
exercicio1 <- read_excel("./dados/exercicio1.xls")

##Obtendo a média
exercicio1_media <- mean(exercicio1$`Taxas de juros`)
print(paste("Media dos juros = ",exercicio1_media))

##Obtendo a mediana
exercicio1_mediana <- median(exercicio1$`Taxas de juros`)
print(paste("Mediana dos juros = ", exercicio1_mediana))

##Obtendo a variância
exercicio1_variancia <- var(exercicio1$`Taxas de juros`)
print(paste("Variancia dos juros = ", exercicio1_variancia))

##Obtendo o desvio padrão
exercicio1_desvioPadrao <- sd(exercicio1$`Taxas de juros`)
print(paste("Desvio padrao dos juros = ", exercicio1_desvioPadrao))

##Obtendo o valor minimo
exercicio1_minimo <- min(exercicio1$`Taxas de juros`)
print(paste("Valor minimo dos juros = ", exercicio1_minimo))

##Obtendo o valor maximo
exercicio1_maximo <- max(exercicio1$`Taxas de juros`)
print(paste("Valor maximo dos juros = ", exercicio1_maximo))

##Obtendo os quartis
exercicio1_Q1 <- quantile(exercicio1$`Taxas de juros`, prob=c(.25))
exercicio1_Q3 <- quantile(exercicio1$`Taxas de juros`, prob=c(.75))
print(paste("Primeiro quartil = ", exercicio1_Q1))
print(paste("Terceiro quartil = ", exercicio1_Q3))

##Obtendo o grafico
boxplot(exercicio1, col = "yellow", horizontal = TRUE, xlab = "Porcentagem", ylab = "Juros")
abline(v = exercicio1_media, col = "blue")
abline(v = exercicio1_mediana, col = "purple")
legend(2.5, 1.5, legend = c("Media", "Mediana"), col = c("blue", "purple"), lty = 1:1)
