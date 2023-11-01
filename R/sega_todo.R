


sega_todo <- function(df, col_name) {

  library(dplyr)
  as.character(col_name)

  if(!anyNA(df[, col_name])) {

    categorias <- unique(df[, col_name])
    lista <- list()

    for (i in 1:length(categorias)) {

      lista[[i]] <- df %>% filter(!!sym(col_name) == categorias[i])
      names(lista)[i] <- as.character(categorias[i])

    }

  } else {

    df_na <- df %>% filter(is.na(!!sym(col_name)))
    df <- df %>% filter(!is.na(!!sym(col_name)))
    categorias <- unique(df[, col_name])
    lista <- list()

    for (i in 1:length(categorias)) {

      lista[[i]] <- df %>% filter(!!sym(col_name) == categorias[i])
      names(lista)[i] <- as.character(categorias[i])

    }

    lista[[i+1]] <- df_na
    names(lista)[i+1] <- "NA"

  }

  return(lista)

}

