# set working directory
#setwd(".\\datasets\\empregos-pe") #Para windows
setwd("./datasets/empregos-pe") #Para linux
# data
data <- read.table("dataset.csv", header = TRUE, sep=";", encoding = "UTF-8")

mean(data$Agropecuária)
mean(data$Extrativa.mineral)
mean(data$Indústria.de.transformação)
mean(data$Construção.civil)
mean(data$Serviços.industriais.de.utilidade.pública)
mean(data$Comércio)
mean(data$Serviços)
mean(data$Administração.pública)

#Os dados foram organizados baseado nas Mesorregiões do estado
#Mesorregião do São Francisco Pernambucano
#comeca em Petrolandia (linha 2) vai até Itacuruba(linha 16)

#Mesorregião do Sertão Pernambucano
#comeca em Araripina (linha 17) vai até Sertânia (linha 57)

#Mesorregião do Agreste Pernambucano
#comeca em Agrestina (linha 58) vai até Vertentes (linha 128)

#Mesorregião da Zona da Mata Pernambucana
#comeca em Chã de Alegria (linha 129) vai até Xexéu (linha 171)

#Mesorregião Metropolitana do Recife
#comeca em Abreu e Lima (linha 172) vai até São Lourenço da Mata (linha 186)
