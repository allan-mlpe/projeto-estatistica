# set working directory
setwd(".\\datasets\\empregos-pe")
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
