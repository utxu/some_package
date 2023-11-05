

crea_random_dfs <- function(n_dfs, n_col, n_rows, interval) {
  set.seed(1010)
  for (i in 1:n_dfs) {
    df <- as.data.frame(matrix(runif(n=n_col*n_rows, min=interval[1], max=interval[2]), nrow=n_rows))
    assign(paste0("df_",i), df, envir = .GlobalEnv)
  }
}
