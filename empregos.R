# set working directory
#setwd(".\\datasets\\empregos-pe") #Para windows
setwd(".") #Para linux

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
agropecuaria <- GrupoDados(AMOSTRA_AGROPECUARIA, AGROPECUARIA, ESTADO)

#Extrativa
extrativa <- GrupoDados(AMOSTRA_EXTRATIVA, EXTRATIVA, ESTADO)

#Industria
industria <- GrupoDados(AMOSTRA_INDUSTRIA, INDUSTRIA, ESTADO)

#Construção
construcao <- GrupoDados(AMOSTRA_CONSTRUCAO, CONSTRUCAO, ESTADO)

#Comercio
comercio <- GrupoDados(AMOSTRA_COMERCIO, COMERCIO, ESTADO)

#Serviços
servicos <- GrupoDados(AMOSTRA_SERVICOS, SERVICOS, ESTADO)

#AdmPublica
administracaoPublica <- GrupoDados(AMOSTRA_ADM_PUBLICA, ADM_PUBLICA, ESTADO)

#Total
totalGeral <- GrupoDados(AMOSTRA_TOTAL, TOTAL, ESTADO)

#Os dados foram organizados baseado nas Mesorregiões do estado
#Mesorregião do São Francisco Pernambucano
#comeca em Petrolandia (linha 2) vai até Itacuruba(linha 16)
#É preciso calcular media, moda, mediana, desvio e variancia para cada coluna
agropecuariaSaoFranciscoPernambucano <- GrupoDados(AMOSTRA_AGROPECUARIA[1:15], AGROPECUARIA, MESOREGIAO_SAO_FRANCISCO_PERNAMBUCANO)
extrativaSaoFranciscoPernambucano <- GrupoDados(AMOSTRA_EXTRATIVA[1:15], EXTRATIVA, MESOREGIAO_SAO_FRANCISCO_PERNAMBUCANO)
industriaSaoFranciscoPernambucano <- GrupoDados(AMOSTRA_INDUSTRIA[1:15], INDUSTRIA, MESOREGIAO_SAO_FRANCISCO_PERNAMBUCANO)
construcaoSaoFranciscoPernambucano <- GrupoDados(AMOSTRA_CONSTRUCAO[1:15], CONSTRUCAO, MESOREGIAO_SAO_FRANCISCO_PERNAMBUCANO)
comercioSaoFranciscoPernambucano <- GrupoDados(AMOSTRA_COMERCIO[1:15], COMERCIO, MESOREGIAO_SAO_FRANCISCO_PERNAMBUCANO)
servicosSaoFranciscoPernambucano <- GrupoDados(AMOSTRA_SERVICOS[1:15], SERVICOS, MESOREGIAO_SAO_FRANCISCO_PERNAMBUCANO)
admPublicaSaoFranciscoPernambucano <- GrupoDados(AMOSTRA_ADM_PUBLICA[1:15], ADM_PUBLICA, MESOREGIAO_SAO_FRANCISCO_PERNAMBUCANO)
totalSaoFranciscoPernambucano <- GrupoDados(AMOSTRA_TOTAL[1:15], TOTAL, MESOREGIAO_SAO_FRANCISCO_PERNAMBUCANO)

#Mesorregião do Sertão Pernambucano
#comeca em Araripina (linha 17) vai até Sertânia (linha 57)
#É preciso calcular media, moda, mediana, desvio e variancia para cada coluna
agropecuariaSertaoPernambucano <- GrupoDados(AMOSTRA_AGROPECUARIA[16:56], AGROPECUARIA, MESOREGIAO_SERTAO_PERNAMBUCANO)
extrativaSertaoPernambucano <- GrupoDados(AMOSTRA_EXTRATIVA[16:56], EXTRATIVA, MESOREGIAO_SERTAO_PERNAMBUCANO)
industriaSertaoPernambucano <- GrupoDados(AMOSTRA_INDUSTRIA[16:56], INDUSTRIA, MESOREGIAO_SERTAO_PERNAMBUCANO)
construcaoSertaoPernambucano <- GrupoDados(AMOSTRA_CONSTRUCAO[16:56], CONSTRUCAO, MESOREGIAO_SERTAO_PERNAMBUCANO)
comercioSertaoPernambucano <- GrupoDados(AMOSTRA_COMERCIO[16:56], COMERCIO, MESOREGIAO_SERTAO_PERNAMBUCANO)
servicosSertaoPernambucano <- GrupoDados(AMOSTRA_SERVICOS[16:56], SERVICOS, MESOREGIAO_SERTAO_PERNAMBUCANO)
admPublicaSertaoPernambucano <- GrupoDados(AMOSTRA_ADM_PUBLICA[16:56], ADM_PUBLICA, MESOREGIAO_SERTAO_PERNAMBUCANO)
totalSertaoPernambucano <- GrupoDados(AMOSTRA_TOTAL[16:56], TOTAL, MESOREGIAO_SERTAO_PERNAMBUCANO)

#Mesorregião do Agreste Pernambucano
#comeca em Agrestina (linha 58) vai até Vertentes (linha 128)
#É preciso calcular media, moda, mediana, desvio e variancia para cada coluna
agropecuariaAgrestePernambucano <- GrupoDados(AMOSTRA_AGROPECUARIA[57:127], AGROPECUARIA, MESOREGIAO_AGRESTE_PERNAMBUCANO)
extrativaAgrestePernambucano <- GrupoDados(AMOSTRA_EXTRATIVA[57:127], EXTRATIVA, MESOREGIAO_AGRESTE_PERNAMBUCANO)
industriaAgrestePernambucano <- GrupoDados(AMOSTRA_INDUSTRIA[57:127], INDUSTRIA, MESOREGIAO_AGRESTE_PERNAMBUCANO)
construcaoAgrestePernambucano <- GrupoDados(AMOSTRA_CONSTRUCAO[57:127], CONSTRUCAO, MESOREGIAO_AGRESTE_PERNAMBUCANO)
comercioAgrestePernambucano <- GrupoDados(AMOSTRA_COMERCIO[57:127], COMERCIO, MESOREGIAO_AGRESTE_PERNAMBUCANO)
servicosAgrestePernambucano <- GrupoDados(AMOSTRA_SERVICOS[57:127], SERVICOS, MESOREGIAO_AGRESTE_PERNAMBUCANO)
admPublicaAgrestePernambucano <- GrupoDados(AMOSTRA_ADM_PUBLICA[57:127], ADM_PUBLICA, MESOREGIAO_AGRESTE_PERNAMBUCANO)
totalAgrestePernambucano <- GrupoDados(AMOSTRA_TOTAL[57:127], TOTAL, MESOREGIAO_AGRESTE_PERNAMBUCANO)

#Mesorregião da Zona da Mata Pernambucana
#comeca em Chã de Alegria (linha 129) vai até Xexéu (linha 171)
#É preciso calcular media, moda, mediana, desvio e variancia para cada coluna
agropecuariaZonaDaMata <- GrupoDados(AMOSTRA_AGROPECUARIA[128:170], AGROPECUARIA, MESOREGIAO_ZONA_DA_MATA)
extrativaZonaDaMata <- GrupoDados(AMOSTRA_EXTRATIVA[128:170], EXTRATIVA, MESOREGIAO_ZONA_DA_MATA)
industriaZonaDaMata <- GrupoDados(AMOSTRA_INDUSTRIA[128:170], INDUSTRIA, MESOREGIAO_ZONA_DA_MATA)
construcaoZonaDaMata <- GrupoDados(AMOSTRA_CONSTRUCAO[128:170], CONSTRUCAO, MESOREGIAO_ZONA_DA_MATA)
comercioZonaDaMata <- GrupoDados(AMOSTRA_COMERCIO[128:170], COMERCIO, MESOREGIAO_ZONA_DA_MATA)
servicosZonaDaMata <- GrupoDados(AMOSTRA_SERVICOS[128:170], SERVICOS, MESOREGIAO_ZONA_DA_MATA)
admPublicaZonaDaMata <- GrupoDados(AMOSTRA_ADM_PUBLICA[128:170], ADM_PUBLICA, MESOREGIAO_ZONA_DA_MATA)
totalZonaDaMata <- GrupoDados(AMOSTRA_TOTAL[128:170], TOTAL, MESOREGIAO_ZONA_DA_MATA)

#Mesorregião Metropolitana do Recife
#comeca em Abreu e Lima (linha 172) vai até São Lourenço da Mata (linha 186)
#É preciso calcular media, moda, mediana, desvio e variancia para cada coluna
agropecuariaMetropolitana <- GrupoDados(AMOSTRA_AGROPECUARIA[171:185], AGROPECUARIA, MESOREGIAO_METROPOLITANA)
extrativaMetropolitana <- GrupoDados(AMOSTRA_EXTRATIVA[171:185], EXTRATIVA, MESOREGIAO_METROPOLITANA)
industriaMetropolitana <- GrupoDados(AMOSTRA_INDUSTRIA[171:185], INDUSTRIA, MESOREGIAO_METROPOLITANA)
construcaoMetropolitana <- GrupoDados(AMOSTRA_CONSTRUCAO[171:185], CONSTRUCAO, MESOREGIAO_METROPOLITANA)
comercioMetropolitana <- GrupoDados(AMOSTRA_COMERCIO[171:185], COMERCIO, MESOREGIAO_METROPOLITANA)
servicosMetropolitana <- GrupoDados(AMOSTRA_SERVICOS[171:185], SERVICOS, MESOREGIAO_METROPOLITANA)
admPublicaMetropolitana <- GrupoDados(AMOSTRA_ADM_PUBLICA[171:185], ADM_PUBLICA, MESOREGIAO_METROPOLITANA)
totalMetropolitana <- GrupoDados(AMOSTRA_TOTAL[171:185], TOTAL, MESOREGIAO_METROPOLITANA)

#Comparacoes
# RMR x Total
# RMR x São Francisco
# RMR x Sertão
# RMR x Agreste
# RMR x Mata

#Mann-Whitney-Wilcoxon Test
#http://www.r-tutor.com/elementary-statistics/non-parametric-methods/mann-whitney-wilcoxon-test

#Média total de empregos
wilcox.test(totalMetropolitana$amostra, totalGeral$amostra, alternative = "greater", exact = FALSE)
wilcox.test(totalMetropolitana$amostra, totalSaoFranciscoPernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(totalMetropolitana$amostra, totalSertaoPernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(totalMetropolitana$amostra, totalAgrestePernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(totalMetropolitana$amostra, totalZonaDaMata$amostra, alternative = "greater", exact = FALSE)

#Agropecuaria
wilcox.test(agropecuariaMetropolitana$amostra, agropecuaria$amostra, alternative = "greater", exact = FALSE)
wilcox.test(agropecuariaMetropolitana$amostra, agropecuariaSaoFranciscoPernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(agropecuariaMetropolitana$amostra, agropecuariaSertaoPernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(agropecuariaMetropolitana$amostra, agropecuariaAgrestePernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(agropecuariaMetropolitana$amostra, agropecuariaZonaDaMata$amostra, alternative = "greater", exact = FALSE)

#Extrativa
wilcox.test(extrativaMetropolitana$amostra, extrativa$amostra, alternative = "greater", exact = FALSE)
wilcox.test(extrativaMetropolitana$amostra, extrativaSaoFranciscoPernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(extrativaMetropolitana$amostra, extrativaSertaoPernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(extrativaMetropolitana$amostra, extrativaAgrestePernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(extrativaMetropolitana$amostra, extrativaZonaDaMata$amostra, alternative = "greater", exact = FALSE)

#Industria
wilcox.test(industriaMetropolitana$amostra, industria$amostra, alternative = "greater", exact = FALSE)
wilcox.test(industriaMetropolitana$amostra, industriaSaoFranciscoPernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(industriaMetropolitana$amostra, industriaSertaoPernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(industriaMetropolitana$amostra, industriaAgrestePernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(industriaMetropolitana$amostra, industriaZonaDaMata$amostra, alternative = "greater", exact = FALSE)

#Construção
wilcox.test(construcaoMetropolitana$amostra, construcao$amostra, alternative = "greater", exact = FALSE)
wilcox.test(construcaoMetropolitana$amostra, construcaoSaoFranciscoPernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(construcaoMetropolitana$amostra, construcaoSertaoPernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(construcaoMetropolitana$amostra, construcaoAgrestePernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(construcaoMetropolitana$amostra, construcaoZonaDaMata$amostra, alternative = "greater", exact = FALSE)

#Comercio
wilcox.test(comercioMetropolitana$amostra, comercio$amostra, alternative = "greater", exact = FALSE)
wilcox.test(comercioMetropolitana$amostra, comercioSaoFranciscoPernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(comercioMetropolitana$amostra, comercioSertaoPernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(comercioMetropolitana$amostra, comercioAgrestePernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(comercioMetropolitana$amostra, comercioZonaDaMata$amostra, alternative = "greater", exact = FALSE)

#Serviços
wilcox.test(servicosMetropolitana$amostra, servicos$amostra, alternative = "greater", exact = FALSE)
wilcox.test(servicosMetropolitana$amostra, servicosSaoFranciscoPernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(servicosMetropolitana$amostra, servicosSertaoPernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(servicosMetropolitana$amostra, servicosAgrestePernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(servicosMetropolitana$amostra, servicosZonaDaMata$amostra, alternative = "greater", exact = FALSE)

#AdmPublica
wilcox.test(admPublicaMetropolitana$amostra, administracaoPublica$amostra, alternative = "greater", exact = FALSE)
wilcox.test(admPublicaMetropolitana$amostra, admPublicaSaoFranciscoPernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(admPublicaMetropolitana$amostra, admPublicaSertaoPernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(admPublicaMetropolitana$amostra, admPublicaAgrestePernambucano$amostra, alternative = "greater", exact = FALSE)
wilcox.test(admPublicaMetropolitana$amostra, admPublicaZonaDaMata$amostra, alternative = "greater", exact = FALSE)

######## ANÁLISE NA REGIÃO METROPOLITANA ########
#admPublica x comercio
wilcox.test(admPublicaMetropolitana$amostra, comercioMetropolitana$amostra, alternative = "greater", exact = FALSE)
#admPublica x industria
wilcox.test(admPublicaMetropolitana$amostra, industriaMetropolitana$amostra, alternative = "greater", exact = FALSE)
#admPublica x construção
wilcox.test(admPublicaMetropolitana$amostra, construcaoMetropolitana$amostra, alternative = "greater", exact = FALSE)
#admPublica x serviços
wilcox.test(admPublicaMetropolitana$amostra, servicosMetropolitana$amostra, alternative = "greater", exact = FALSE)
#admPublica x agropecuaria
wilcox.test(admPublicaMetropolitana$amostra, agropecuariaMetropolitana$amostra, alternative = "greater", exact = FALSE)
#admPublica x extrativa
wilcox.test(admPublicaMetropolitana$amostra, extrativaMetropolitana$amostra, alternative = "greater", exact = FALSE)

#comercio x admPublica
wilcox.test(comercioMetropolitana$amostra, admPublicaMetropolitana$amostra, alternative = "greater", exact = FALSE)
#comercio x industria
wilcox.test(comercioMetropolitana$amostra, industriaMetropolitana$amostra, alternative = "greater", exact = FALSE)
#comercio x construção
wilcox.test(comercioMetropolitana$amostra, construcaoMetropolitana$amostra, alternative = "greater", exact = FALSE)
#comercio x serviços
wilcox.test(comercioMetropolitana$amostra, servicosMetropolitana$amostra, alternative = "greater", exact = FALSE)
#comercio x agropecuaria
wilcox.test(comercioMetropolitana$amostra, agropecuariaMetropolitana$amostra, alternative = "greater", exact = FALSE)
#comercio x extrativa
wilcox.test(comercioMetropolitana$amostra, extrativaMetropolitana$amostra, alternative = "greater", exact = FALSE)

#industria x admPublica
wilcox.test(industriaMetropolitana$amostra, admPublicaMetropolitana$amostra, alternative = "greater", exact = FALSE)
#industria x industria
wilcox.test(industriaMetropolitana$amostra, comercioMetropolitana$amostra, alternative = "greater", exact = FALSE)
#industria x construção
wilcox.test(industriaMetropolitana$amostra, construcaoMetropolitana$amostra, alternative = "greater", exact = FALSE)
#industria x serviços
wilcox.test(industriaMetropolitana$amostra, servicosMetropolitana$amostra, alternative = "greater", exact = FALSE)
#industria x agropecuaria
wilcox.test(industriaMetropolitana$amostra, agropecuariaMetropolitana$amostra, alternative = "greater", exact = FALSE)
#industria x extrativa
wilcox.test(industriaMetropolitana$amostra, extrativaMetropolitana$amostra, alternative = "greater", exact = FALSE)

#construção x admPublica
wilcox.test(construcaoMetropolitana$amostra, admPublicaMetropolitana$amostra, alternative = "greater", exact = FALSE)
#construção x industria
wilcox.test(construcaoMetropolitana$amostra, comercioMetropolitana$amostra, alternative = "greater", exact = FALSE)
#construção x industria
wilcox.test(construcaoMetropolitana$amostra, industriaMetropolitana$amostra, alternative = "greater", exact = FALSE)
#construção x serviços
wilcox.test(construcaoMetropolitana$amostra, servicosMetropolitana$amostra, alternative = "greater", exact = FALSE)
#construção x agropecuaria
wilcox.test(construcaoMetropolitana$amostra, agropecuariaMetropolitana$amostra, alternative = "greater", exact = FALSE)
#construção x extrativa
wilcox.test(construcaoMetropolitana$amostra, extrativaMetropolitana$amostra, alternative = "greater", exact = FALSE)

#serviços x admPublica
wilcox.test(servicosMetropolitana$amostra, admPublicaMetropolitana$amostra, alternative = "greater", exact = FALSE)
#serviços x industria
wilcox.test(servicosMetropolitana$amostra, comercioMetropolitana$amostra, alternative = "greater", exact = FALSE)
#serviços x industria
wilcox.test(servicosMetropolitana$amostra, industriaMetropolitana$amostra, alternative = "greater", exact = FALSE)
#serviços x construção
wilcox.test(servicosMetropolitana$amostra, construcaoMetropolitana$amostra, alternative = "greater", exact = FALSE)
#serviços x agropecuaria
wilcox.test(servicosMetropolitana$amostra, agropecuariaMetropolitana$amostra, alternative = "greater", exact = FALSE)
#serviços x extrativa
wilcox.test(servicosMetropolitana$amostra, extrativaMetropolitana$amostra, alternative = "greater", exact = FALSE)

#agropecuaria x admPublica
wilcox.test(agropecuariaMetropolitana$amostra, admPublicaMetropolitana$amostra, alternative = "greater", exact = FALSE)
#agropecuaria x industria
wilcox.test(agropecuariaMetropolitana$amostra, comercioMetropolitana$amostra, alternative = "greater", exact = FALSE)
#agropecuaria x industria
wilcox.test(agropecuariaMetropolitana$amostra, industriaMetropolitana$amostra, alternative = "greater", exact = FALSE)
#agropecuaria x construção
wilcox.test(agropecuariaMetropolitana$amostra, construcaoMetropolitana$amostra, alternative = "greater", exact = FALSE)
#agropecuaria x serviços
wilcox.test(agropecuariaMetropolitana$amostra, servicosMetropolitana$amostra, alternative = "greater", exact = FALSE)
#agropecuaria x extrativa
wilcox.test(agropecuariaMetropolitana$amostra, extrativaMetropolitana$amostra, alternative = "greater", exact = FALSE)

#extrativa x admPublica
wilcox.test(extrativaMetropolitana$amostra, admPublicaMetropolitana$amostra, alternative = "greater", exact = FALSE)
#extrativa x industria
wilcox.test(extrativaMetropolitana$amostra, comercioMetropolitana$amostra, alternative = "greater", exact = FALSE)
#extrativa x industria
wilcox.test(extrativaMetropolitana$amostra, industriaMetropolitana$amostra, alternative = "greater", exact = FALSE)
#extrativa x construção
wilcox.test(extrativaMetropolitana$amostra, construcaoMetropolitana$amostra, alternative = "greater", exact = FALSE)
#extrativa x serviços
wilcox.test(extrativaMetropolitana$amostra, servicosMetropolitana$amostra, alternative = "greater", exact = FALSE)
#extrativa x agropecuaria
wilcox.test(extrativaMetropolitana$amostra, agropecuariaMetropolitana$amostra, alternative = "greater", exact = FALSE)
