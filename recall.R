# arq ?o objeto que aponta para o arquivo com os dados
setwd("/home/pauloserrafh/Documents/Mestrado/UFPE/2017.2/Estatistica/Projeto") # Onde se localiza o arquivo da tabela
# "dados-recall-2016-formatados.csv" - nome do arquivo
entrada <- read.table("dados-recall-2016-formatados.csv", header =TRUE, sep = ",")
#print(entrada)
#write.table(entrada, "teste.txt")

#os dados foram divididos em 6 classes
#total
#alimentos
#automotores
#eletroeletronicos
#motociclos
#outros

#### Calculando os dados do total ####
length(entrada$Quantidade.Atendida)
mean(entrada$Quantidade.Afetada)
mean(entrada$Quantidade.Atendida)
median(entrada$Quantidade.Atendida)
median(entrada$Quantidade.Afetada)

moda <- function(d){
	dd <- table(d)
	valores <- which(dd==max(dd))
	vmodal <- as.numeric(names(valores))
	return(vmodal)
}

moda(entrada$Quantidade.Afetada)
moda(entrada$Quantidade.Atendida)

#Nao parece fazer muito sentido na nossa analise
# var(entrada$Quantidade.Atendida)
# var(entrada$Quantidade.Afetada)
# sd(entrada$Quantidade.Atendida)
# sd(entrada$Quantidade.Afetada)

#### Calculando os dados dos alimentos ####
alimentosAf <- entrada$Quantidade.Afetada[1:4]
alimentosAt <- entrada$Quantidade.Atendida[1:4]

length(alimentosAf)
mean(alimentosAf)
median(alimentosAf)
moda(alimentosAf)
# var(alimentosAf)
# sd(alimentosAf)

mean(alimentosAt)
median(alimentosAt)
moda(alimentosAt)
# var(alimentosAt)
# sd(alimentosAt)

#### Calculando os dados dos automotores ####
automotoresAf <- entrada$Quantidade.Afetada[5:108]
automotoresAt <- entrada$Quantidade.Atendida[5:108]

length(automotoresAf)
mean(automotoresAf)
median(automotoresAf)
moda(automotoresAf)
# var(automotoresAf)
# sd(automotoresAf)

mean(automotoresAt)
median(automotoresAt)
moda(automotoresAt)
# var(automotoresAt)
# sd(automotoresAt)

#### Calculando os dados dos eletroeletronicos ####
eletroAf <- entrada$Quantidade.Afetada[109:112]
eletroAt <- entrada$Quantidade.Atendida[109:112]

length(eletroAf)
mean(eletroAf)
median(eletroAf)
moda(eletroAf)
# var(eletroAf)
# sd(eletroAf)

mean(eletroAt)
median(eletroAt)
moda(eletroAt)
# var(eletroAt)
# sd(eletroAt)

#### Calculando os dados dos motociclos ####
motoAf <- entrada$Quantidade.Afetada[113:128]
motoAt <- entrada$Quantidade.Atendida[113:128]

length(motoAf)
mean(motoAf)
median(motoAf)
moda(motoAf)
# var(motoAf)
# sd(motoAf)

mean(motoAt)
median(motoAt)
moda(motoAt)
# var(motoAt)
# sd(motoAt)

#### Calculando os dados dos outros ####
outrosAf <- entrada$Quantidade.Afetada[129:135]
outrosAt <- entrada$Quantidade.Atendida[129:135]

length(outrosAf)
mean(outrosAf)
median(outrosAf)
moda(outrosAf)
# var(outrosAf)
# sd(outrosAf)

mean(outrosAt)
median(outrosAt)
moda(outrosAt)
# var(outrosAt)
# sd(outrosAt)


#### Plot dos histogramas ####
#Para gerar os histogramas, é preciso rodar direto da linha de comando do R.
#Vou deixar tudo comentado apenas para referencia

# hist(entrada$Quantidade.Afetada)
# hist(entrada$Quantidade.Atendida)
# hist(alimentosAf)
# hist(alimentosAf)
# hist(automotoresAf)
# hist(automotoresAt)
# hist(eletroAf)
# hist(eletroAt)
# hist(motoAf)
# hist(motoAt)
# hist(outrosAf)
# hist(outrosAt)

#### Testes de Nomalidade ####
#A hipótese nula do teste de Shapiro-Wilk é que a população possui distribuição normal.
#Portanto, um valor de p < 0.05 indica que você rejeitou a hipótese nula, ou seja,
#seus dados não possuem distribuição normal.
#https://rpubs.com/paternogbc/46768
shapiro.test(entrada$Quantidade.Afetada)
shapiro.test(entrada$Quantidade.Atendida)
shapiro.test(alimentosAf)
shapiro.test(alimentosAt)
shapiro.test(automotoresAf)
shapiro.test(automotoresAt)
shapiro.test(eletroAf)
shapiro.test(eletroAt)
shapiro.test(motoAf)
shapiro.test(motoAt)
shapiro.test(outrosAf)
shapiro.test(outrosAt)

#Dados não possuem distribuição normal, precisamos fazer testes não parametricos
#http://www.ebah.com.br/content/ABAAAe2dQAE/estatistica-nao-parametrica-no-r
