#matrix(data, nrow = x, ncol = y, byrow - T | F)

vetor <- 1:20

a <- matrix(vetor, 4, 5, TRUE) #Cria o vetor
print(a)

vetor1 <- 5:1
vetor2 <- c("A", "B", "C", "D", "E")
vetor3 <- 7:11

b <- rbind(vetor1, vetor2, vetor3)
print(b)

c <- cbind(vetor1, vetor2, vetor3)
print(c)