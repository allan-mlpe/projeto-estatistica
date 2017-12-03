#Classe que representa um grupo de dados do dataset
GrupoDados <- function(amostra, label, mesoregiao = NULL) {
  GrupoDados <- list(
    amostra = amostra,
    tamanhoAmostra = length(amostra),
    label = label,
    mesoregiao = mesoregiao,
    media = mean(amostra),
    moda = moda(amostra),
    mediana = median(amostra),
    desvioPadrao = sd(amostra),
    variancia = var(amostra),
    shapiroTest = shapiro.test(amostra),
    isNormal = shapiro.test(amostra)$p.value > 0.05
  )
  
  class(GrupoDados) <- "GrupoDados"
  
  #Plota todas as amostras em um Gráfico Q-Q (Normal Probability Plot)
  qqnorm(GrupoDados$amostra, main=paste(label, mesoregiao, sep=" - "))
  qqline(GrupoDados$amostra)
  
  return(GrupoDados)
}