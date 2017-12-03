# set working directory
#setwd(".\\datasets\\empregos-pe") #Para windows
#setwd("./datasets/empregos-pe") #Para linux

#imports
source("GrupoDados.class.R")
source("empregos.constants.R", encoding = "UTF-8")

#Função para cálculo da moda
moda <- function(d){
  dd <- table(d)
  valores <- which(dd==max(dd))
  vmodal <- as.numeric(names(valores))
  return(vmodal)
}

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

#Total
empregosTotal <- c(AMOSTRA_AGROPECUARIA, AMOSTRA_EXTRATIVA, AMOSTRA_INDUSTRIA, AMOSTRA_CONSTRUCAO, AMOSTRA_SERVICOS_PUBLICOS, AMOSTRA_COMERCIO, AMOSTRA_SERVICOS, AMOSTRA_ADM_PUBLICA)
totalGeral <- GrupoDados(empregosTotal, TOTAL)

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
empregosTotalSaoFranciscoPernambucano <- c(AMOSTRA_AGROPECUARIA[1:15], AMOSTRA_EXTRATIVA[1:15], AMOSTRA_INDUSTRIA[1:15], AMOSTRA_CONSTRUCAO[1:15], AMOSTRA_SERVICOS_PUBLICOS[1:15], AMOSTRA_COMERCIO[1:15], AMOSTRA_SERVICOS[1:15], AMOSTRA_ADM_PUBLICA[1:15])
totalSaoFranciscoPernambucano <- GrupoDados(empregosTotalSaoFranciscoPernambucano, TOTAL, MESOREGIAO_SAO_FRANCISCO_PERNAMBUCANO)

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
empregosTotalSertaoPernambucano <- c(AMOSTRA_AGROPECUARIA[16:56], AMOSTRA_EXTRATIVA[16:56], AMOSTRA_INDUSTRIA[16:56], AMOSTRA_CONSTRUCAO[16:56], AMOSTRA_SERVICOS_PUBLICOS[16:56], AMOSTRA_COMERCIO[16:56], AMOSTRA_SERVICOS[16:56], AMOSTRA_ADM_PUBLICA[16:56])
totalSertaoPernambucano <- GrupoDados(empregosTotalSertaoPernambucano, TOTAL, MESOREGIAO_SERTAO_PERNAMBUCANO)

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
empregosTotalAgrestePernambucano <- c(AMOSTRA_AGROPECUARIA[57:127], AMOSTRA_EXTRATIVA[57:127], AMOSTRA_INDUSTRIA[57:127], AMOSTRA_CONSTRUCAO[57:127], AMOSTRA_SERVICOS_PUBLICOS[57:127], AMOSTRA_COMERCIO[57:127], AMOSTRA_SERVICOS[57:127], AMOSTRA_ADM_PUBLICA[57:127])
totalAgrestePernambucano <- GrupoDados(empregosTotalAgrestePernambucano, TOTAL, MESOREGIAO_AGRESTE_PERNAMBUCANO)

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
empregosTotalZonaDaMata <- c(AMOSTRA_AGROPECUARIA[128:170], AMOSTRA_EXTRATIVA[128:170], AMOSTRA_INDUSTRIA[128:170], AMOSTRA_CONSTRUCAO[128:170], AMOSTRA_SERVICOS_PUBLICOS[128:170], AMOSTRA_COMERCIO[128:170], AMOSTRA_SERVICOS[128:170], AMOSTRA_ADM_PUBLICA[128:170])
totalZonaDaMata <- GrupoDados(empregosTotalZonaDaMata, TOTAL, MESOREGIAO_ZONA_DA_MATA)

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
empregosTotalMetropolitana <- c(AMOSTRA_AGROPECUARIA[171:185], AMOSTRA_EXTRATIVA[171:185], AMOSTRA_INDUSTRIA[171:185], AMOSTRA_CONSTRUCAO[171:185], AMOSTRA_SERVICOS_PUBLICOS[171:185], AMOSTRA_COMERCIO[171:185], AMOSTRA_SERVICOS[171:185], AMOSTRA_ADM_PUBLICA[171:185])
totalMetropolitana <- GrupoDados(empregosTotalMetropolitana, TOTAL, MESOREGIAO_METROPOLITANA)

#Comparacoes
# RMR x Total
# RMR x São Francisco
# RMR x Sertão
# RMR x Agreste
# RMR x Mata

#Mann-Whitney-Wilcoxon Test
#http://www.r-tutor.com/elementary-statistics/non-parametric-methods/mann-whitney-wilcoxon-test

#Média total de empregos
wilcox.test(totalMetropolitana$amostra, totalGeral$amostra, alternative = "less", exact = FALSE)
wilcox.test(totalMetropolitana$amostra, totalSaoFranciscoPernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(totalMetropolitana$amostra, totalSertaoPernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(totalMetropolitana$amostra, totalAgrestePernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(totalMetropolitana$amostra, totalZonaDaMata$amostra, alternative = "less", exact = FALSE)

#Agropecuaria
wilcox.test(agropecuariaMetropolitana$amostra, agropecuaria$amostra, alternative = "less", exact = FALSE)
wilcox.test(agropecuariaMetropolitana$amostra, agropecuariaSaoFranciscoPernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(agropecuariaMetropolitana$amostra, agropecuariaSertaoPernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(agropecuariaMetropolitana$amostra, agropecuariaAgrestePernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(agropecuariaMetropolitana$amostra, agropecuariaZonaDaMata$amostra, alternative = "less", exact = FALSE)

#Extrativa
wilcox.test(extrativaMetropolitana$amostra, extrativa$amostra, alternative = "less", exact = FALSE)
wilcox.test(extrativaMetropolitana$amostra, extrativaSaoFranciscoPernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(extrativaMetropolitana$amostra, extrativaSertaoPernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(extrativaMetropolitana$amostra, extrativaAgrestePernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(extrativaMetropolitana$amostra, extrativaZonaDaMata$amostra, alternative = "less", exact = FALSE)

#Industria
wilcox.test(industriaMetropolitana$amostra, industria$amostra, alternative = "less", exact = FALSE)
wilcox.test(industriaMetropolitana$amostra, industriaSaoFranciscoPernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(industriaMetropolitana$amostra, industriaSertaoPernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(industriaMetropolitana$amostra, industriaAgrestePernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(industriaMetropolitana$amostra, industriaZonaDaMata$amostra, alternative = "less", exact = FALSE)

#Construção
wilcox.test(construcaoMetropolitana$amostra, construcao$amostra, alternative = "less", exact = FALSE)
wilcox.test(construcaoMetropolitana$amostra, construcaoSaoFranciscoPernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(construcaoMetropolitana$amostra, construcaoSertaoPernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(construcaoMetropolitana$amostra, construcaoAgrestePernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(construcaoMetropolitana$amostra, construcaoZonaDaMata$amostra, alternative = "less", exact = FALSE)

#ServiçosPublicos
wilcox.test(servicosPublicosMetropolitana$amostra, servicosPublicos$amostra, alternative = "less", exact = FALSE)
wilcox.test(servicosPublicosMetropolitana$amostra, servicosPublicosSaoFranciscoPernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(servicosPublicosMetropolitana$amostra, servicosPublicosSertaoPernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(servicosPublicosMetropolitana$amostra, servicosPublicosAgrestePernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(servicosPublicosMetropolitana$amostra, servicosPublicosZonaDaMata$amostra, alternative = "less", exact = FALSE)

#Comercio
wilcox.test(comercioMetropolitana$amostra, comercio$amostra, alternative = "less", exact = FALSE)
wilcox.test(comercioMetropolitana$amostra, comercioSaoFranciscoPernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(comercioMetropolitana$amostra, comercioSertaoPernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(comercioMetropolitana$amostra, comercioAgrestePernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(comercioMetropolitana$amostra, comercioZonaDaMata$amostra, alternative = "less", exact = FALSE)

#Serviços
wilcox.test(servicosMetropolitana$amostra, servicos$amostra, alternative = "less", exact = FALSE)
wilcox.test(servicosMetropolitana$amostra, servicosSaoFranciscoPernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(servicosMetropolitana$amostra, servicosSertaoPernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(servicosMetropolitana$amostra, servicosAgrestePernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(servicosMetropolitana$amostra, servicosZonaDaMata$amostra, alternative = "less", exact = FALSE)

#AdmPublica
wilcox.test(admPublicaMetropolitana$amostra, administracaoPublica$amostra, alternative = "less", exact = FALSE)
wilcox.test(admPublicaMetropolitana$amostra, admPublicaSaoFranciscoPernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(admPublicaMetropolitana$amostra, admPublicaSertaoPernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(admPublicaMetropolitana$amostra, admPublicaAgrestePernambucano$amostra, alternative = "less", exact = FALSE)
wilcox.test(admPublicaMetropolitana$amostra, admPublicaZonaDaMata$amostra, alternative = "less", exact = FALSE)
