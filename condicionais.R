a <- 20

if(a == 30){
  res <- "N�mero � igual a trinta"
}else if(a < 30){
  res <- "N�mero menor que trinta"
}else if(a > 30){
  res <- "N�mero maior que trinta"
}

print(res)

b <- 50
res2 <- if(b == 50) "Igual" else "Diferente" #If tern�rio
print(res2)