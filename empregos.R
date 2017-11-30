# set working directory
#setwd(".\\datasets\\empregos-pe") #Para windows
setwd("./datasets/empregos-pe") #Para linux
# data
data <- read.table("dataset.csv", header = TRUE, sep=";", encoding = "UTF-8")

moda <- function(d){
	dd <- table(d)
	valores <- which(dd==max(dd))
	vmodal <- as.numeric(names(valores))
	return(vmodal)
}

############################################
# TODO:
# 1) CALCULAR A MEDIA DO TOTAL DE EMPREGOS
# SOMAR TODAS AS AREAS DE ATUACAO E DIVIDIR
# PELO NUMERO DE CIDADES.
############################################

#Agropecuaria
mean(data$Agropecuaria)
median(data$Agropecuaria)
moda(data$Agropecuaria)
var(data$Agropecuaria)
sd(data$Agropecuaria)
#Extrativa
mean(data$Extrativa.mineral)
median(data$Extrativa.mineral)
moda(data$Extrativa.mineral)
var(data$Extrativa.mineral)
sd(data$Extrativa.mineral)
#Industria
mean(data$Industria.de.transformacao)
median(data$Industria.de.transformacao)
moda(data$Industria.de.transformacao)
var(data$Industria.de.transformacao)
sd(data$Industria.de.transformacao)
#Construção
mean(data$Construcao.civil)
median(data$Construcao.civil)
moda(data$Construcao.civil)
var(data$Construcao.civil)
sd(data$Construcao.civil)
#ServiçosPublicos
mean(data$Servicos.industriais.de.utilidade.publica)
median(data$Servicos.industriais.de.utilidade.publica)
moda(data$Servicos.industriais.de.utilidade.publica)
var(data$Servicos.industriais.de.utilidade.publica)
sd(data$Servicos.industriais.de.utilidade.publica)
#Comercio
mean(data$Comercio)
median(data$Comercio)
moda(data$Comercio)
var(data$Comercio)
sd(data$Comercio)
#Serviços
mean(data$Servicos)
median(data$Servicos)
moda(data$Servicos)
var(data$Servicos)
sd(data$Servicos)
#AdmPublica
mean(data$Servicos)
median(data$Servicos)
moda(data$Servicos)
var(data$Servicos)
sd(data$Servicos)

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

#Agropecuaria
mean(data$Agropecuaria[1:15])
median(data$Agropecuaria[1:15])
moda(data$Agropecuaria[1:15])
var(data$Agropecuaria[1:15])
sd(data$Agropecuaria[1:15])
#Extrativa
mean(data$Extrativa.mineral[1:15])
median(data$Extrativa.mineral[1:15])
moda(data$Extrativa.mineral[1:15])
var(data$Extrativa.mineral[1:15])
sd(data$Extrativa.mineral[1:15])
#Industria
mean(data$Industria.de.transformacao[1:15])
median(data$Industria.de.transformacao[1:15])
moda(data$Industria.de.transformacao[1:15])
var(data$Industria.de.transformacao[1:15])
sd(data$Industria.de.transformacao[1:15])
#Construção
mean(data$Construcao.civil[1:15])
median(data$Construcao.civil[1:15])
moda(data$Construcao.civil[1:15])
var(data$Construcao.civil[1:15])
sd(data$Construcao.civil[1:15])
#ServiçosPublicos
mean(data$Servicos.industriais.de.utilidade.publica[1:15])
median(data$Servicos.industriais.de.utilidade.publica[1:15])
moda(data$Servicos.industriais.de.utilidade.publica[1:15])
var(data$Servicos.industriais.de.utilidade.publica[1:15])
sd(data$Servicos.industriais.de.utilidade.publica[1:15])
#Comercio
mean(data$Comercio[1:15])
median(data$Comercio[1:15])
moda(data$Comercio[1:15])
var(data$Comercio[1:15])
sd(data$Comercio[1:15])
#Serviços
mean(data$Servicos[1:15])
median(data$Servicos[1:15])
moda(data$Servicos[1:15])
var(data$Servicos[1:15])
sd(data$Servicos[1:15])
#AdmPublica
mean(data$Servicos[1:15])
median(data$Servicos[1:15])
moda(data$Servicos[1:15])
var(data$Servicos[1:15])
sd(data$Servicos[1:15])

#Mesorregião do Sertão Pernambucano
#comeca em Araripina (linha 17) vai até Sertânia (linha 57)
#É preciso calcular media, moda, mediana, desvio e variancia para cada coluna

#Agropecuaria
mean(data$Agropecuaria[16:56])
median(data$Agropecuaria[16:56])
moda(data$Agropecuaria[16:56])
var(data$Agropecuaria[16:56])
sd(data$Agropecuaria[16:56])
#Extrativa
mean(data$Extrativa.mineral[16:56])
median(data$Extrativa.mineral[16:56])
moda(data$Extrativa.mineral[16:56])
var(data$Extrativa.mineral[16:56])
sd(data$Extrativa.mineral[16:56])
#Industria
mean(data$Industria.de.transformacao[16:56])
median(data$Industria.de.transformacao[16:56])
moda(data$Industria.de.transformacao[16:56])
var(data$Industria.de.transformacao[16:56])
sd(data$Industria.de.transformacao[16:56])
#Construção
mean(data$Construcao.civil[16:56])
median(data$Construcao.civil[16:56])
moda(data$Construcao.civil[16:56])
var(data$Construcao.civil[16:56])
sd(data$Construcao.civil[16:56])
#ServiçosPublicos
mean(data$Servicos.industriais.de.utilidade.publica[16:56])
median(data$Servicos.industriais.de.utilidade.publica[16:56])
moda(data$Servicos.industriais.de.utilidade.publica[16:56])
var(data$Servicos.industriais.de.utilidade.publica[16:56])
sd(data$Servicos.industriais.de.utilidade.publica[16:56])
#Comercio
mean(data$Comercio[16:56])
median(data$Comercio[16:56])
moda(data$Comercio[16:56])
var(data$Comercio[16:56])
sd(data$Comercio[16:56])
#Serviços
mean(data$Servicos[16:56])
median(data$Servicos[16:56])
moda(data$Servicos[16:56])
var(data$Servicos[16:56])
sd(data$Servicos[16:56])
#AdmPublica
mean(data$Servicos[16:56])
median(data$Servicos[16:56])
moda(data$Servicos[16:56])
var(data$Servicos[16:56])
sd(data$Servicos[16:56])

#Mesorregião do Agreste Pernambucano
#comeca em Agrestina (linha 58) vai até Vertentes (linha 128)
#É preciso calcular media, moda, mediana, desvio e variancia para cada coluna

#Agropecuaria
mean(data$Agropecuaria[57:127])
median(data$Agropecuaria[57:127])
moda(data$Agropecuaria[57:127])
var(data$Agropecuaria[57:127])
sd(data$Agropecuaria[57:127])
#Extrativa
mean(data$Extrativa.mineral[57:127])
median(data$Extrativa.mineral[57:127])
moda(data$Extrativa.mineral[57:127])
var(data$Extrativa.mineral[57:127])
sd(data$Extrativa.mineral[57:127])
#Industria
mean(data$Industria.de.transformacao[57:127])
median(data$Industria.de.transformacao[57:127])
moda(data$Industria.de.transformacao[57:127])
var(data$Industria.de.transformacao[57:127])
sd(data$Industria.de.transformacao[57:127])
#Construção
mean(data$Construcao.civil[57:127])
median(data$Construcao.civil[57:127])
moda(data$Construcao.civil[57:127])
var(data$Construcao.civil[57:127])
sd(data$Construcao.civil[57:127])
#ServiçosPublicos
mean(data$Servicos.industriais.de.utilidade.publica[57:127])
median(data$Servicos.industriais.de.utilidade.publica[57:127])
moda(data$Servicos.industriais.de.utilidade.publica[57:127])
var(data$Servicos.industriais.de.utilidade.publica[57:127])
sd(data$Servicos.industriais.de.utilidade.publica[57:127])
#Comercio
mean(data$Comercio[57:127])
median(data$Comercio[57:127])
moda(data$Comercio[57:127])
var(data$Comercio[57:127])
sd(data$Comercio[57:127])
#Serviços
mean(data$Servicos[57:127])
median(data$Servicos[57:127])
moda(data$Servicos[57:127])
var(data$Servicos[57:127])
sd(data$Servicos[57:127])
#AdmPublica
mean(data$Servicos[57:127])
median(data$Servicos[57:127])
moda(data$Servicos[57:127])
var(data$Servicos[57:127])
sd(data$Servicos[57:127])

#Mesorregião da Zona da Mata Pernambucana
#comeca em Chã de Alegria (linha 129) vai até Xexéu (linha 171)
#É preciso calcular media, moda, mediana, desvio e variancia para cada coluna

#Agropecuaria
mean(data$Agropecuaria[128:170])
median(data$Agropecuaria[128:170])
moda(data$Agropecuaria[128:170])
var(data$Agropecuaria[128:170])
sd(data$Agropecuaria[128:170])
#Extrativa
mean(data$Extrativa.mineral[128:170])
median(data$Extrativa.mineral[128:170])
moda(data$Extrativa.mineral[128:170])
var(data$Extrativa.mineral[128:170])
sd(data$Extrativa.mineral[128:170])
#Industria
mean(data$Industria.de.transformacao[128:170])
median(data$Industria.de.transformacao[128:170])
moda(data$Industria.de.transformacao[128:170])
var(data$Industria.de.transformacao[128:170])
sd(data$Industria.de.transformacao[128:170])
#Construção
mean(data$Construcao.civil[128:170])
median(data$Construcao.civil[128:170])
moda(data$Construcao.civil[128:170])
var(data$Construcao.civil[128:170])
sd(data$Construcao.civil[128:170])
#ServiçosPublicos
mean(data$Servicos.industriais.de.utilidade.publica[128:170])
median(data$Servicos.industriais.de.utilidade.publica[128:170])
moda(data$Servicos.industriais.de.utilidade.publica[128:170])
var(data$Servicos.industriais.de.utilidade.publica[128:170])
sd(data$Servicos.industriais.de.utilidade.publica[128:170])
#Comercio
mean(data$Comercio[128:170])
median(data$Comercio[128:170])
moda(data$Comercio[128:170])
var(data$Comercio[128:170])
sd(data$Comercio[128:170])
#Serviços
mean(data$Servicos[128:170])
median(data$Servicos[128:170])
moda(data$Servicos[128:170])
var(data$Servicos[128:170])
sd(data$Servicos[128:170])
#AdmPublica
mean(data$Servicos[128:170])
median(data$Servicos[128:170])
moda(data$Servicos[128:170])
var(data$Servicos[128:170])
sd(data$Servicos[128:170])

#Mesorregião Metropolitana do Recife
#comeca em Abreu e Lima (linha 172) vai até São Lourenço da Mata (linha 186)
#É preciso calcular media, moda, mediana, desvio e variancia para cada coluna

#Agropecuaria
mean(data$Agropecuaria[171:185])
median(data$Agropecuaria[171:185])
moda(data$Agropecuaria[171:185])
var(data$Agropecuaria[171:185])
sd(data$Agropecuaria[171:185])
#Extrativa
mean(data$Extrativa.mineral[171:185])
median(data$Extrativa.mineral[171:185])
moda(data$Extrativa.mineral[171:185])
var(data$Extrativa.mineral[171:185])
sd(data$Extrativa.mineral[171:185])
#Industria
mean(data$Industria.de.transformacao[171:185])
median(data$Industria.de.transformacao[171:185])
moda(data$Industria.de.transformacao[171:185])
var(data$Industria.de.transformacao[171:185])
sd(data$Industria.de.transformacao[171:185])
#Construção
mean(data$Construcao.civil[171:185])
median(data$Construcao.civil[171:185])
moda(data$Construcao.civil[171:185])
var(data$Construcao.civil[171:185])
sd(data$Construcao.civil[171:185])
#ServiçosPublicos
mean(data$Servicos.industriais.de.utilidade.publica[171:185])
median(data$Servicos.industriais.de.utilidade.publica[171:185])
moda(data$Servicos.industriais.de.utilidade.publica[171:185])
var(data$Servicos.industriais.de.utilidade.publica[171:185])
sd(data$Servicos.industriais.de.utilidade.publica[171:185])
#Comercio
mean(data$Comercio[171:185])
median(data$Comercio[171:185])
moda(data$Comercio[171:185])
var(data$Comercio[171:185])
sd(data$Comercio[171:185])
#Serviços
mean(data$Servicos[171:185])
median(data$Servicos[171:185])
moda(data$Servicos[171:185])
var(data$Servicos[171:185])
sd(data$Servicos[171:185])
#AdmPublica
mean(data$Servicos[171:185])
median(data$Servicos[171:185])
moda(data$Servicos[171:185])
var(data$Servicos[171:185])
sd(data$Servicos[171:185])

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
