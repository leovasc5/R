vetorA <- 2:8 #Cria um vetor a partir de 2 até 8


vetorB <- seq(from=1, to=10, by=1) #Cria um vetor como se fosse looping
print(vetorB)

vetorC <- seq(0, 12, 1)
print(vetorC)

vetorD <-seq(from=1, to=10, length.out=4) #Calcula quantos números vc quer dentro do vetor para depois fazer o looping
print(vetorD)

vetorE <- c(10, 14, 16, 17) #Cria um vetor manualmente
print(vetorE)

vetorF <- c("A", "B", "C")

vetorG <- c(vetorD, vetorE, vetorF) #junta todos os vetores e os torna characterers
print(vetorG)

typeof(vetorG)

length(vetorG)