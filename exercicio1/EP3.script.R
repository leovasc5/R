df_ocupadosNac <- read.table(
  file = "PessoalOcupadoNacional.csv",
  header = TRUE, sep = ";", dec = ",",
  fill = TRUE
)

df_ocupadosReg <- read.table(
  file = "PessoalOcupadoRegional.csv",
  header = TRUE, sep = ";", dec = ",",
  fill = TRUE
)

subs_NA_por_zero <- function(df_coluna){
  numRow - length(df_coluna)
  df_coluna[is.na(df_coluna)] <- 0
  
  return(df_coluna)
}

subs_NA_por_zero_col_numericas <- function(df){
  numero_coluna <- ncol(df)
  
  for(col in 1:numero_coluna){
    if(is.numeric(df[,col])){
      df[is.na(df)] <- 0
    }
  }
  
  return(df)
}

df_ocupadosReg <- subs_NA_por_zero_col_numericas(df_ocupadosReg)
head(df_ocupadosReg) #Mostra a tabela regional

df_ocupadosNac <- subs_NA_por_zero_col_numericas(df_ocupadosNac)
head(df_ocupadosNac) #Mostra a tabela nacional

#####EXERCÍCIO 3#####

setor_maior_percentual_contratacoes_regiao <- function(df, regiao){
  maior <- 0
  setor <- ""
  
  for(i in 1:nrow(df)){
    if(regiao == df[i,1]){
      if(df[i, 4] > maior){
        maior <- df[i, 4]
        setor <- df[i, 2]
      }
    }
  }
  return(paste(setor, " -- ", maior))
}

print(setor_maior_percentual_contratacoes_regiao(df_ocupadosReg, "Norte"))

print(setor_maior_percentual_contratacoes_regiao(df_ocupadosReg, "Sul"))

print(setor_maior_percentual_contratacoes_regiao(df_ocupadosReg, "Nordeste"))

print(setor_maior_percentual_contratacoes_regiao(df_ocupadosReg, "Sudeste"))

print(setor_maior_percentual_contratacoes_regiao(df_ocupadosReg, "CentroOeste"))


