
#' Crea dataframes con columnas de números aleatorios
#'
#' @param n_dfs Número de dataframes finales que queremos tener
#' @param n_col Número de columnas que ha de tener el df
#' @param n_rows Número de filas que ha de tener el df
#' @param interval Intervalo máximo y mínimo de los números aleatorios que rellenan el df
#'
#' @return Uno o más dfs
#' @export
#'
#'
crea_random_dfs <- function(n_dfs, n_col, n_rows, interval) {
  set.seed(1010)
  for (i in 1:n_dfs) {
    df <- as.data.frame(matrix(runif(n=n_col*n_rows, min=interval[1], max=interval[2]), nrow=n_rows))
    assign(paste0("df_",i), df, envir = .GlobalEnv)
  }
}
