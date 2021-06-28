a <- 20

if(a == 30){
  res <- "Número é igual a trinta"
}else if(a < 30){
  res <- "Número menor que trinta"
}else if(a > 30){
  res <- "Número maior que trinta"
}

print(res)

b <- 50
res2 <- if(b == 50) "Igual" else "Diferente" #If ternário
print(res2)