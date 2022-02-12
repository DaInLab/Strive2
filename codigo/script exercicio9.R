library(readxl)
exercicio9 <- read_excel("./dados/exercicio9.xls")

exercicio9_distribuicaoFrequencias = table(cut(exercicio9$Salários, breaks = seq.int(from = min(exercicio9$Salários), to = max(exercicio9$Salários), by = 2)))
#transformando a primeira coluna em nome das linhas:
exercicio9_distribuicaoFrequencias = data.frame(exercicio9_distribuicaoFrequencias, row.names =  1)

#infelizmente não consegui fazer os valores do eixo X serem alterados
hist(exercicio9$Salários, col = "gold", xlab = "Salários (mínimos)", ylab = "Frequência", main = "Salários", breaks = seq.int(from = min(exercicio9$Salários), to = max(exercicio9$Salários), by = 2))