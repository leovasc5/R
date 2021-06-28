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
  
  return(paste("Na Região ", regiao, ", o setor que mais contrata é o ", setor, " com uma taxa de ", maior))

}

print(setor_maior_percentual_contratacoes_regiao(df_ocupadosReg, "Norte"))

print(setor_maior_percentual_contratacoes_regiao(df_ocupadosReg, "Sul"))

print(setor_maior_percentual_contratacoes_regiao(df_ocupadosReg, "Nordeste"))

print(setor_maior_percentual_contratacoes_regiao(df_ocupadosReg, "Sudeste"))

print(setor_maior_percentual_contratacoes_regiao(df_ocupadosReg, "CentroOeste"))


#### EXERCÍCIO 4 ####
compara_regional_nacional <- function(df_ocupadosNac, df_ocupadosReg){
  maiorNorte <- 0
  setorNorte <- ""
  nomeSetorNorte <- ""
  
  maiorSul <- 0
  setorSul <- ""
  nomeSetorSul <- ""
  
  maiorNordeste <- 0
  setorNordeste <- ""
  nomeSetorNordeste <- ""
  
  maiorSudeste <- 0
  setorSudeste <- ""
  nomeSetorSudeste <- ""
  
  maiorCO <- 0
  setorCO <- ""
  nomeSetorCO <- ""
  
  percentual_nac_norte <- 0
  percentual_nac_sul <- 0
  percentual_nac_nordeste <- 0
  percentual_nac_sudeste <- 0
  percentual_nac_co <- 0
  
  #Looping Geral
  for(a in 1:nrow(df_ocupadosReg)){
    if(df_ocupadosReg[a,1] == "Norte"){
      if(df_ocupadosReg[a, 4] > maiorNorte){
        maiorNorte <- df_ocupadosReg[a, 4]
        setorNorte <- df_ocupadosReg[a, 2]
        nomeSetorNorte <- df_ocupadosReg[a, 2]
        for(b in 1:nrow(df_ocupadosNac)){
          if(df_ocupadosNac[b, 2] == setorNorte){
            percentual_nac_norte <- df_ocupadosNac[b, 4]
          }
        }
      }
    }else if(df_ocupadosReg[a,1] == "Sul"){
      if(df_ocupadosReg[a, 4] > maiorSul){
        maiorSul <- df_ocupadosReg[a, 4]
        setorSul <- df_ocupadosReg[a, 2]
        nomeSetorSul <- df_ocupadosReg[a, 2]
        for(b in 1:nrow(df_ocupadosNac)){
          if(df_ocupadosNac[b, 2] == setorSul){
            percentual_nac_sul <- df_ocupadosNac[b, 4]
          }
        }
      }
    }else if(df_ocupadosReg[a,1] == "Nordeste"){
      if(df_ocupadosReg[a, 4] > maiorNordeste){
        maiorNordeste <- df_ocupadosReg[a, 4]
        setorNordeste <- df_ocupadosReg[a, 2]
        nomeSetorNordeste <- df_ocupadosReg[a, 2]
        for(b in 1:nrow(df_ocupadosNac)){
          if(df_ocupadosNac[b, 2] == setorNordeste){
            percentual_nac_nordeste <- df_ocupadosNac[b, 4]
          }
        }
      }
    }else if(df_ocupadosReg[a,1] == "Sudeste"){
      if(df_ocupadosReg[a, 4] > maiorSudeste){
        maiorSudeste <- df_ocupadosReg[a, 4]
        setorSudeste <- df_ocupadosReg[a, 2]
        nomeSetorSudeste <- df_ocupadosReg[a, 2]
        for(b in 1:nrow(df_ocupadosNac)){
          if(df_ocupadosNac[b, 2] == setorNordeste){
            percentual_nac_nordeste <- df_ocupadosNac[b, 4]
          }
        }
      }
    }else if(df_ocupadosReg[a,1] == "CentroOeste"){
      if(df_ocupadosReg[a, 4] > maiorCO){
        maiorCO <- df_ocupadosReg[a, 4]
        setorCO <- df_ocupadosReg[a, 2]
        nomeSetorCO <- df_ocupadosReg[a, 2]
        for(b in 1:nrow(df_ocupadosNac)){
          if(df_ocupadosNac[b, 2] == setorCO){
            percentual_nac_co <- df_ocupadosNac[b, 4]
          }
        }
      }
    }
  }

  
  print("      Região   Setor  %Regional  %Nacional")
  print(paste("       Norte  ", nomeSetorNorte, "         ", maiorNorte, "", maiorNorte))
  print(paste("         Sul  ", nomeSetorSul, "          ", maiorSul, "", maiorSul))
  print(paste("    Nordeste  ", nomeSetorNordeste, "          ", maiorNordeste, "", maiorNordeste))
  print(paste("     Sudeste  ", nomeSetorSudeste, "          ", maiorSudeste, "", maiorSudeste))
  print(paste("Centro-Oeste  ", nomeSetorCO, "          ", maiorCO, "", maiorCO))
}

compara_regional_nacional(df_ocupadosNac, df_ocupadosReg)




