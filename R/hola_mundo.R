#' Printaer un saludo al munndo
#'
#' @param x Una string comunmente un nombre propio
#' @return un saludo acompañado del nombre introducido en \code{x}
#'
#' @examples
#' hola_mundo("Paola")
#' hola_mundo("Álvaro")

hola_mundo <- function(x) {

  print(paste0("Hola, ", x, "este es tu mundo"))

  }


