
# Retorna uma lista de indices de linhas que contém NAs
linhasComNA <- function(dataSet) {
  cat("Construindo lista de NAs...\n")
  
  linhasRemovidas <- c()
  for( linha in seq(1, nrow(dataSet)) ) {
    
    for(coluna in seq( 1:ncol(dataSet)) ) {
      if(is.na(dataSet[linha, coluna])) {
        linhasRemovidas <- c(linhasRemovidas, linha)
        break
      }
    }
  }
  cat("Lista de NAs construida.\n")
  return(linhasRemovidas)
}

# Verifica se um dado eh nominal para transforma-lo em numerico
transformarNominalNumerico <- function(dadosSemNA) {
  cat("Transformando dados nominais em numericos.\n")
  for( coluna in seq(1:ncol(dadosSemNA)) ) {
    if(!is.numeric(dadosSemNA[ , coluna])) {
      dadosSemNA[ , coluna] = as.numeric( unlist( as.factor(dadosSemNA[ , coluna]) ) )
    }
  }
  return (dadosSemNA)
}

# Normaliza os dados entre [0, 1]
normalizarDados <- function(dadosSemNA) {
  cat("Normalizando dados...")
  return( ( dadosSemNA - min(dadosSemNA) ) / ( max(dadosSemNA) - min(dadosSemNA) ) )
}
