library(readxl)
exercicio2 <- read_excel("./dados/exercicio2.xls")

## tabela de frequencia:
exercicio2_tabelaFrequencia <- table(exercicio2$Casas)

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

## definindo a função para calcular a moda:
encontrarModa <- function(x){
  #extrai os valores únicos dos dados de x
  u <- unique(x)
  #conta quantas vezes cada valor ocorre
  tab <- tabulate(match(x, u))
  #não sei o que isso faz
  u[tab == max(tab)]
}

## encontrando moda
exercicio2_moda <- encontrarModa(exercicio2$Casas)
print(paste("Moda da quantidade de casas por quarteirao = ", exercicio2_moda))

barplot(exercicio2_tabelaFrequencia, col = "red", ylab = "Frequência", xlab = "Quantidade de casas por quarteirão")
