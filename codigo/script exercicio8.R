library(readxl)

exercicio8 <- read_excel("./dados/exercicio8.xls")
altura = data.frame(unlist(exercicio8, use.names = FALSE))

exercicio8_tabelaFrequencia = table(cut(altura$unlist.exercicio8..use.names...FALSE., breaks = seq.int(from=min(altura), to=max(altura), by = 0.05)))
#transformando a coluna 1 em nome das linhas:
exercicio8_tabelaFrequencia = data.frame(exercicio8_tabelaFrequencia, row.names = 1)
hist(altura$unlist.exercicio8..use.names...FALSE., col = "dark violet", xlab = "Altura", ylab = "Frequência", main = "Exercício 8")