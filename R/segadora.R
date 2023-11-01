



segadora <- function(df, filas) {

  filas <- as.numeric(filas)
  if (nrow(df) > filas) {

  iter <- nrow(df)/filas
  iter <- floor(iter)

  lista <- list()

  for (i in 1:iter) {

    lista[[i]] <- df[1:filas, ]
    df <- df[-(1:filas), ]
    if (i == iter) lista[[i+1]] <- df

    }

 } else {

    lista <- list()
    lista[[1]] <- df

  }

  return(lista)

}
