a <- 10 #int
b <- "Hello World!" #string
c <- c(5, 10, 15, 20) #array

#Iniciando múltiplas variáveis
d <- e <- f <- 0

print(typeof(a))
print(typeof(b))
print(typeof(c))

#unset do PHP -> desaloca da memória
rm(a)

#lista todas as variáveis ativas no sistema
ls()

#desloca todas as variáveis
rm(list = ls())

#Variaveis não podem ter caractéres especiais, nem iniciar com números