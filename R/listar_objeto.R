

listar_objeto <- function(nombres = NULL, patrones = NULL) {

  if (!is.null(nombres)) {

    stopifnot(is.vector(nombres), is.character(nombres))
    posicion <- which(ls(.GlobalEnv) %in% nombres)
    lista_dfs_nombres <- mget(ls(.GlobalEnv)[posicion], envir = .GlobalEnv)
    lista_dfs_nombres <-lista_dfs_nombres[unlist(lapply(lista_dfs_nombres, function (x) class(x) != 'function'))]

  }

  if(!is.null(patrones)) {

    stopifnot(is.vector(patrones), is.character(patrones))
    lista_dfs_patrones <- mget(ls(.GlobalEnv, pattern = paste(patrones, collapse = "|")), envir = .GlobalEnv)
    lista_dfs_patrones <- lista_dfs_patrones[unlist(lapply(lista_dfs_patrones, function (x) class(x) != 'function'))]

  }

  if(!is.null(nombres) && is.null(patrones)) return(lista_dfs_nombres)
  if(is.null(nombres) && !is.null(patrones)) return(lista_dfs_patrones)

  if(!is.null(nombres) && !is.null(patrones)) {

    lista_final <- c(lista_dfs_nombres, lista_dfs_patrones)
    return(lista_final)

  }

}
