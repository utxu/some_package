


desalistar_objeto <- function(lista) {

  stopifnot(is.list(lista))
  # Revisr si tiene nombres la lista. Si no los tiene qué hacer. Si los tiene compararlos con los del
  # global_env y parar la fun si hay uno que exista en el global env (o solo copiar los que no estén y devolver los
  # que estén en otra lista:

  global_env_objects <- ls()
  objetos_lista <- names(lista)

  if (any(objetos_lista %in% global_env_objects)) {

    message("Hay objetos en la lista que existen en el GlobalEnv")
    print(objetos_lista[objetos_lista %in% global_env_objects])
    stop("No se permite sobrescribir objetos del GlobalEnv")

  }

  for (obj in seq_along(lista)){
    assign(names(lista)[obj], lista[[obj]], envir = .GlobalEnv)
    }

}
