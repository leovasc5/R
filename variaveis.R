a <- 10 #int
b <- "Hello World!" #string
c <- c(5, 10, 15, 20) #array

#Iniciando m�ltiplas vari�veis
d <- e <- f <- 0

print(typeof(a))
print(typeof(b))
print(typeof(c))

#unset do PHP -> desaloca da mem�ria
rm(a)

#lista todas as vari�veis ativas no sistema
ls()

#desloca todas as vari�veis
rm(list = ls())

#Variaveis n�o podem ter caract�res especiais, nem iniciar com n�meros