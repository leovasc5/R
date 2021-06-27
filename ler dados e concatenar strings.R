b <- "Leonardo"
c <- "Vasconcelos"
d <- paste(b, c)
d

nome <- readline("Digite seu nome: ")
idade <- readline("Informe a sua idade: ")
idade <- as.integer(idade) #Converteu para inteiro
res <- paste(nome, " tem ", idade, " anos!")

print(res)
