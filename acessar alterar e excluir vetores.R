vetorA <- 2:8 #Cria um vetor a partir de 2 at� 8

vetorB <- seq(from=1, to=10, by=1) #Cria um vetor como se fosse looping
print(vetorB)

vetorC <- seq(0, 12, 1)
print(vetorC)

vetorD <-seq(from=1, to=10, length.out=4) #Calcula quantos n�meros vc quer dentro do vetor para depois fazer o looping
print(vetorD)

vetorE <- c(10, 14, 16, 17) #Cria um vetor manualmente
print(vetorE)

vetorF <- c("A", "B", "C")

vetorG <- c(vetorD, vetorE, vetorF) #junta todos os vetores e os torna characterers
print(vetorG)

typeof(vetorG)

length(vetorG) #pega o tamanho do vetor

print(vetorG[c(1:5)]) #Printa at� determinado n�mero
print(vetorG[c(1,4)]) #Printa determinados n�meros
print(vetorG[c(-1,-7)]) #N�o mostra os n�meros negativos

vetorG[1] <- 110 #Altera determinado �ndice
vetorG <- NULL #Zera o vetor
rm(vetorG) #deloca da mem�ria