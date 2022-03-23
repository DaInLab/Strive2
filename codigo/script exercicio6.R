library(readxl)
exercicio6 <- read_excel("./dados/exercicio6.xls")
library(qcc)
pareto.chart(exercicio6$`Nº pessoas`, names = exercicio6$Qualidade, main = "Classificacao do atendimento",ylab = "Numero de pessoas", ylab2 = "Porcentagem acumulativa")
