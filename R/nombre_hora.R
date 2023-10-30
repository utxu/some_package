#' Printea una cadena string con el día y la hora.


nombre_hora <- function(hora = Sys.time()) {

  cadena_hora <- paste0(substr(hora, 9, 10), substr(hora, 12, 13), substr(hora, 15, 16), substr(hora, 18, 19))
  return(cadena_hora)
}
