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
    #A hipótese nula do teste de Shapiro-Wilk é que a população possui distribuição normal.
    #Portanto, um valor de p < 0.05 indica que você rejeitou a hipótese nula, ou seja,
    #seus dados não possuem distribuição normal.
    #https://rpubs.com/paternogbc/46768
  )

  class(GrupoDados) <- "GrupoDados"

  #Plota todas as amostras em um Gráfico Q-Q (Normal Probability Plot)
  qqnorm(GrupoDados$amostra, main=paste(label, mesoregiao, sep=" - "))
  qqline(GrupoDados$amostra)

  #Histogramas
  hist(GrupoDados$amostra, main=paste(label, mesoregiao, sep=" - "), xlab=iconv("Número de Empregos Formais/Cidade", "UTF-8", "latin1"))

  return(GrupoDados)
}
