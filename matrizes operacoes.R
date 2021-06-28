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

print(a * 2) #multiplica a matriz

vetor4 <- 21:40
d <- matrix(vetor4, 4, 5, TRUE) #Cria o vetor
print(d)

print(a + d) #soma as matrizes

print(d-a) #subtrai as matrizes

print(d/a) #divide as matrizes

rowSums(a) #Soma as linhas
colSums(a) #Soma as colunas

rowMeans(a) #Traz as médias
colMeans(a) #Traz as médias

t(a)
t(d)

c <- matrix(c(1,3,5,2,6,7,8,3,9),ncol=3)
print(c)
dim(c)
solve(c)

det(c)

e <- matrix(1:16, 4, 4)
print(e)

diag(a) #pega a diagonal da matriz