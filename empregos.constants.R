data <- read.table("datasets/empregos-pe/dataset.csv", header = TRUE, sep=";", encoding = "UTF-8")

# constantes - labels
AGROPECUARIA <- "Agropecuária"
EXTRATIVA <- "Extrativa Mineral"
INDUSTRIA <- "Indústria de Transformação"
CONSTRUCAO <- "Construção Civil"
SERVICOS_PUBLICOS <- "Serviços Industriais de Utilidade Pública"
COMERCIO <- "Comércio"
SERVICOS <- "Serviços"
ADM_PUBLICA <- "Administração Pública"
TOTAL <- "Total"

# Constantes - mesoregiões
MESOREGIAO_SAO_FRANCISCO_PERNAMBUCANO <- "São Francisco Pernambucano"
MESOREGIAO_SERTAO_PERNAMBUCANO <- "Sertão Pernambucano"
MESOREGIAO_AGRESTE_PERNAMBUCANO <- "Agreste Pernambucano"
MESOREGIAO_ZONA_DA_MATA <- "Zona da Mata"
MESOREGIAO_METROPOLITANA <- "Metropolitana do Recife"
ESTADO <- 'Estado de Pernambuco'

# constantes - dados
AMOSTRA_AGROPECUARIA <- data$Agropecuaria
AMOSTRA_EXTRATIVA <- data$Extrativa.mineral
AMOSTRA_INDUSTRIA <- data$Industria.de.transformacao
AMOSTRA_CONSTRUCAO <- data$Construcao.civil
AMOSTRA_SERVICOS_PUBLICOS <- data$Servicos.industriais.de.utilidade.publica
AMOSTRA_COMERCIO <- data$Comercio
AMOSTRA_SERVICOS <- data$Servicos
AMOSTRA_ADM_PUBLICA <- data$Administracao.publica
