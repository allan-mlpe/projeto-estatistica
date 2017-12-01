# set working directory
#setwd(".\\datasets\\empregos-pe") #Para windows
setwd("./datasets/empregos-pe") #Para linux
# data
data <- read.table("dataset.csv", header = TRUE, sep=";", encoding = "UTF-8")

#Função para cálculo da moda
moda <- function(d){
  dd <- table(d)
  valores <- which(dd==max(dd))
  vmodal <- as.numeric(names(valores))
  return(vmodal)
}

#Classe que representa um grupo de dados do dataset
GrupoDados <- function(amostra, label, mesoregiao = NULL) {
  GrupoDados <- list(
    label = label,
    mesoregiao = mesoregiao,
    media = mean(amostra),
    moda = moda(amostra),
    mediana = median(amostra),
    desvioPadrao = sd(amostra),
    variancia = var(amostra)
  )
  
  class(GrupoDados) <- "GrupoDados"
  return(GrupoDados)
}

############################################
# TODO:
# 1) CALCULAR A MEDIA DO TOTAL DE EMPREGOS
# SOMAR TODAS AS AREAS DE ATUACAO E DIVIDIR
# PELO NUMERO DE CIDADES.
############################################

# constantes - labels
AGROPECUARIA <- "Agropecuária"
EXTRATIVA <- "Extrativa Mineral"
INDUSTRIA <- "Indústria de Transformação"
CONSTRUCAO <- "Construção Civil"
SERVICOS_PUBLICOS <- "Serviços Industriais de Utilidade Pública"
COMERCIO <- "Comércio"
SERVICOS <- "Serviços"
ADM_PUBLICA <- "Administração Pública"

# Constantes - mesoregiões
MESOREGIAO_SAO_FRANCISCO_PERNAMBUCANO <- "São Francisco Pernambucano"
MESOREGIAO_SERTAO_PERNAMBUCANO <- "Sertão Pernambucano"
MESOREGIAO_AGRESTE_PERNAMBUCANO <- "Agreste Pernambucano"
MESOREGIAO_ZONA_DA_MATA <- "Zona da Mata"
MESOREGIAO_METROPOLITANA <- "Metropolitana do Recife"

# constantes - dados
AMOSTRA_AGROPECUARIA <- data$Agropecuaria
AMOSTRA_EXTRATIVA <- data$Extrativa.mineral
AMOSTRA_INDUSTRIA <- data$Industria.de.transformacao
AMOSTRA_CONSTRUCAO <- data$Construcao.civil
AMOSTRA_SERVICOS_PUBLICOS <- data$Servicos.industriais.de.utilidade.publica
AMOSTRA_COMERCIO <- data$Comercio
AMOSTRA_SERVICOS <- data$Servicos
AMOSTRA_ADM_PUBLICA <- data$Administracao.publica

#Agropecuaria
agropecuaria <- GrupoDados(AMOSTRA_AGROPECUARIA, AGROPECUARIA)

#Extrativa
extrativa <- GrupoDados(AMOSTRA_EXTRATIVA, EXTRATIVA)

#Industria
industria <- GrupoDados(AMOSTRA_INDUSTRIA, INDUSTRIA)

#Construção
construcao <- GrupoDados(AMOSTRA_CONSTRUCAO, CONSTRUCAO)

#ServiçosPublicos
servicosPublicos <- GrupoDados(AMOSTRA_SERVICOS_PUBLICOS, SERVICOS_PUBLICOS)

#Comercio
comercio <- GrupoDados(AMOSTRA_COMERCIO, COMERCIO)

#Serviços
servicos <- GrupoDados(AMOSTRA_SERVICOS, SERVICOS)

#AdmPublica
administracaoPublica <- GrupoDados(AMOSTRA_ADM_PUBLICA, ADM_PUBLICA)

############################################
# TODO:
# 1) CALCULAR A MEDIA DO TOTAL DE EMPREGOS
# EM CADA MESORREGIAO.
# SOMAR TODAS AS AREAS DE ATUACAO E DIVIDIR
# PELO NUMERO DE CIDADES DA REGIAO.
############################################

#Os dados foram organizados baseado nas Mesorregiões do estado
#Mesorregião do São Francisco Pernambucano
#comeca em Petrolandia (linha 2) vai até Itacuruba(linha 16)
#É preciso calcular media, moda, mediana, desvio e variancia para cada coluna
agropecuariaSaoFranciscoPernambucano <- GrupoDados(AMOSTRA_AGROPECUARIA[1:15], AGROPECUARIA, MESOREGIAO_SAO_FRANCISCO_PERNAMBUCANO)
extrativaSaoFranciscoPernambucano <- GrupoDados(AMOSTRA_EXTRATIVA[1:15], EXTRATIVA, MESOREGIAO_SAO_FRANCISCO_PERNAMBUCANO)
industriaSaoFranciscoPernambucano <- GrupoDados(AMOSTRA_INDUSTRIA[1:15], INDUSTRIA, MESOREGIAO_SAO_FRANCISCO_PERNAMBUCANO)
construcaoSaoFranciscoPernambucano <- GrupoDados(AMOSTRA_CONSTRUCAO[1:15], CONSTRUCAO, MESOREGIAO_SAO_FRANCISCO_PERNAMBUCANO)
servicosPublicosSaoFranciscoPernambucano <- GrupoDados(AMOSTRA_SERVICOS_PUBLICOS[1:15], SERVICOS_PUBLICOS, MESOREGIAO_SAO_FRANCISCO_PERNAMBUCANO)
comercioSaoFranciscoPernambucano <- GrupoDados(AMOSTRA_COMERCIO[1:15], COMERCIO, MESOREGIAO_SAO_FRANCISCO_PERNAMBUCANO)
servicosSaoFranciscoPernambucano <- GrupoDados(AMOSTRA_SERVICOS[1:15], SERVICOS, MESOREGIAO_SAO_FRANCISCO_PERNAMBUCANO)
admPublicaSaoFranciscoPernambucano <- GrupoDados(AMOSTRA_ADM_PUBLICA[1:15], ADM_PUBLICA, MESOREGIAO_SAO_FRANCISCO_PERNAMBUCANO)

#Mesorregião do Sertão Pernambucano
#comeca em Araripina (linha 17) vai até Sertânia (linha 57)
#É preciso calcular media, moda, mediana, desvio e variancia para cada coluna
agropecuariaSertaoPernambucano <- GrupoDados(AMOSTRA_AGROPECUARIA[16:56], AGROPECUARIA, MESOREGIAO_SERTAO_PERNAMBUCANO)
extrativaSertaoPernambucano <- GrupoDados(AMOSTRA_EXTRATIVA[16:56], EXTRATIVA, MESOREGIAO_SERTAO_PERNAMBUCANO)
industriaSertaoPernambucano <- GrupoDados(AMOSTRA_INDUSTRIA[16:56], INDUSTRIA, MESOREGIAO_SERTAO_PERNAMBUCANO)
construcaoSertaoPernambucano <- GrupoDados(AMOSTRA_CONSTRUCAO[16:56], CONSTRUCAO, MESOREGIAO_SERTAO_PERNAMBUCANO)
servicosPublicosSertaoPernambucano <- GrupoDados(AMOSTRA_SERVICOS_PUBLICOS[16:56], SERVICOS_PUBLICOS, MESOREGIAO_SERTAO_PERNAMBUCANO)
comercioSertaoPernambucano <- GrupoDados(AMOSTRA_COMERCIO[16:56], COMERCIO, MESOREGIAO_SERTAO_PERNAMBUCANO)
servicosSertaoPernambucano <- GrupoDados(AMOSTRA_SERVICOS[16:56], SERVICOS, MESOREGIAO_SERTAO_PERNAMBUCANO)
admPublicaSertaoPernambucano <- GrupoDados(AMOSTRA_ADM_PUBLICA[16:56], ADM_PUBLICA, MESOREGIAO_SERTAO_PERNAMBUCANO)


#Mesorregião do Agreste Pernambucano
#comeca em Agrestina (linha 58) vai até Vertentes (linha 128)
#É preciso calcular media, moda, mediana, desvio e variancia para cada coluna
agropecuariaAgrestePernambucano <- GrupoDados(AMOSTRA_AGROPECUARIA[57:127], AGROPECUARIA, MESOREGIAO_AGRESTE_PERNAMBUCANO)
extrativaAgrestePernambucano <- GrupoDados(AMOSTRA_EXTRATIVA[57:127], EXTRATIVA, MESOREGIAO_AGRESTE_PERNAMBUCANO)
industriaAgrestePernambucano <- GrupoDados(AMOSTRA_INDUSTRIA[57:127], INDUSTRIA, MESOREGIAO_AGRESTE_PERNAMBUCANO)
construcaoAgrestePernambucano <- GrupoDados(AMOSTRA_CONSTRUCAO[57:127], CONSTRUCAO, MESOREGIAO_AGRESTE_PERNAMBUCANO)
servicosPublicosAgrestePernambucano <- GrupoDados(AMOSTRA_SERVICOS_PUBLICOS[57:127], SERVICOS_PUBLICOS, MESOREGIAO_AGRESTE_PERNAMBUCANO)
comercioAgrestePernambucano <- GrupoDados(AMOSTRA_COMERCIO[57:127], COMERCIO, MESOREGIAO_AGRESTE_PERNAMBUCANO)
servicosAgrestePernambucano <- GrupoDados(AMOSTRA_SERVICOS[57:127], SERVICOS, MESOREGIAO_AGRESTE_PERNAMBUCANO)
admPublicaAgrestePernambucano <- GrupoDados(AMOSTRA_ADM_PUBLICA[57:127], ADM_PUBLICA, MESOREGIAO_AGRESTE_PERNAMBUCANO)


#Mesorregião da Zona da Mata Pernambucana
#comeca em Chã de Alegria (linha 129) vai até Xexéu (linha 171)
#É preciso calcular media, moda, mediana, desvio e variancia para cada coluna
agropecuariaZonaDaMata <- GrupoDados(AMOSTRA_AGROPECUARIA[128:170], AGROPECUARIA, MESOREGIAO_ZONA_DA_MATA)
extrativaZonaDaMata <- GrupoDados(AMOSTRA_EXTRATIVA[128:170], EXTRATIVA, MESOREGIAO_ZONA_DA_MATA)
industriaZonaDaMata <- GrupoDados(AMOSTRA_INDUSTRIA[128:170], INDUSTRIA, MESOREGIAO_ZONA_DA_MATA)
construcaoZonaDaMata <- GrupoDados(AMOSTRA_CONSTRUCAO[128:170], CONSTRUCAO, MESOREGIAO_ZONA_DA_MATA)
servicosPublicosZonaDaMata <- GrupoDados(AMOSTRA_SERVICOS_PUBLICOS[128:170], SERVICOS_PUBLICOS, MESOREGIAO_ZONA_DA_MATA)
comercioZonaDaMata <- GrupoDados(AMOSTRA_COMERCIO[128:170], COMERCIO, MESOREGIAO_ZONA_DA_MATA)
servicosZonaDaMata <- GrupoDados(AMOSTRA_SERVICOS[128:170], SERVICOS, MESOREGIAO_ZONA_DA_MATA)
admPublicaZonaDaMata <- GrupoDados(AMOSTRA_ADM_PUBLICA[128:170], ADM_PUBLICA, MESOREGIAO_ZONA_DA_MATA)


#Mesorregião Metropolitana do Recife
#comeca em Abreu e Lima (linha 172) vai até São Lourenço da Mata (linha 186)
#É preciso calcular media, moda, mediana, desvio e variancia para cada coluna
agropecuariaMetropolitana <- GrupoDados(AMOSTRA_AGROPECUARIA[171:185], AGROPECUARIA, MESOREGIAO_METROPOLITANA)
extrativaMetropolitana <- GrupoDados(AMOSTRA_EXTRATIVA[171:185], EXTRATIVA, MESOREGIAO_METROPOLITANA)
industriaMetropolitana <- GrupoDados(AMOSTRA_INDUSTRIA[171:185], INDUSTRIA, MESOREGIAO_METROPOLITANA)
construcaoMetropolitana <- GrupoDados(AMOSTRA_CONSTRUCAO[171:185], CONSTRUCAO, MESOREGIAO_METROPOLITANA)
servicosPublicosMetropolitana <- GrupoDados(AMOSTRA_SERVICOS_PUBLICOS[171:185], SERVICOS_PUBLICOS, MESOREGIAO_METROPOLITANA)
comercioMetropolitana <- GrupoDados(AMOSTRA_COMERCIO[171:185], COMERCIO, MESOREGIAO_METROPOLITANA)
servicosMetropolitana <- GrupoDados(AMOSTRA_SERVICOS[171:185], SERVICOS, MESOREGIAO_METROPOLITANA)
admPublicaMetropolitana <- GrupoDados(AMOSTRA_ADM_PUBLICA[171:185], ADM_PUBLICA, MESOREGIAO_METROPOLITANA)

############################################
# TODO:
# 1) FAZER MAIS ANALISE EXPLORATORIA
# 2) HISTOGRAMAS
############################################

#### Testes de Nomalidade ####
#A hipótese nula do teste de Shapiro-Wilk é que a população possui distribuição normal.
#Portanto, um valor de p < 0.05 indica que você rejeitou a hipótese nula, ou seja,
#seus dados não possuem distribuição normal.
#https://rpubs.com/paternogbc/46768

#Total
shapiro.test(data$Agropecuaria)
shapiro.test(data$Extrativa.mineral)
shapiro.test(data$Industria.de.transformacao)
shapiro.test(data$Construcao.civil)
shapiro.test(data$Servicos.industriais.de.utilidade.publica)
shapiro.test(data$Comercio)
shapiro.test(data$Servicos)
shapiro.test(data$Administracao.publica)

#Mesorregião do São Francisco Pernambucano
shapiro.test(data$Agropecuaria[1:15])
shapiro.test(data$Extrativa.mineral[1:15])
shapiro.test(data$Industria.de.transformacao[1:15])
shapiro.test(data$Construcao.civil[1:15])
shapiro.test(data$Servicos.industriais.de.utilidade.publica[1:15])
shapiro.test(data$Comercio[1:15])
shapiro.test(data$Servicos[1:15])
shapiro.test(data$Administracao.publica[1:15])

#Mesorregião do Sertão Pernambucano
shapiro.test(data$Agropecuaria[16:56])
shapiro.test(data$Extrativa.mineral[16:56])
shapiro.test(data$Industria.de.transformacao[16:56])
shapiro.test(data$Construcao.civil[16:56])
shapiro.test(data$Servicos.industriais.de.utilidade.publica[16:56])
shapiro.test(data$Comercio[16:56])
shapiro.test(data$Servicos[16:56])
shapiro.test(data$Administracao.publica[16:56])

#Mesorregião do Agreste Pernambucano
shapiro.test(data$Agropecuaria[57:127])
shapiro.test(data$Extrativa.mineral[57:127])
shapiro.test(data$Industria.de.transformacao[57:127])
shapiro.test(data$Construcao.civil[57:127])
shapiro.test(data$Servicos.industriais.de.utilidade.publica[57:127])
shapiro.test(data$Comercio[57:127])
shapiro.test(data$Servicos[57:127])
shapiro.test(data$Administracao.publica[57:127])

#Mesorregião da Zona da Mata Pernambucana
shapiro.test(data$Agropecuaria[128:170])
shapiro.test(data$Extrativa.mineral[128:170])
shapiro.test(data$Industria.de.transformacao[128:170])
shapiro.test(data$Construcao.civil[128:170])
shapiro.test(data$Servicos.industriais.de.utilidade.publica[128:170])
shapiro.test(data$Comercio[128:170])
shapiro.test(data$Servicos[128:170])
shapiro.test(data$Administracao.publica[128:170])

#Mesorregião Metropolitana do Recife
shapiro.test(data$Agropecuaria[171:185])
shapiro.test(data$Extrativa.mineral[171:185])
shapiro.test(data$Industria.de.transformacao[171:185])
shapiro.test(data$Construcao.civil[171:185])
shapiro.test(data$Servicos.industriais.de.utilidade.publica[171:185])
shapiro.test(data$Comercio[171:185])
shapiro.test(data$Servicos[171:185])
shapiro.test(data$Administracao.publica[171:185])

############################################
# TODO:
# 1) COMPARAR AS MEDIAS DE EMPREGOS DE
# CADA REGIAO ENTRE SI E COM O TOTAL.
#
# 2) COMPARAR AS MEDIAS DE EMPREGOS DE
# AREAS DE ATUACAO ESPECIFICAS ENTRE
# CADA REGIAO E COM O TOTAL
############################################
#Comparacoes
