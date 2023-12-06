

find_in_search_path <- function(pattern, ...) {

  pattern <- tolower(pattern)

  pkgs <- search()
  pkgs <- grep("package:", pkgs, value=TRUE)
  pkgs <- gsub("package:", "",pkgs)

  list_object <- list()

  for (i in seq_along(pkgs)) {
    namespace <- ls(getNamespace(pkgs[i]), all.names=TRUE)
    namespace <- tolower(namespace)
    list_object[[i]] <- grep(pattern = pattern, namespace, value = TRUE, ...)
    names(list_object)[[i]] <- pkgs[i]

  }

  list_object <- Filter(function(x) length(x) > 0, list_object)
  return(list_object)
}
