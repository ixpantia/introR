#' Listar los tutoriales disponibles en el paquete
#'
#' @import learnr
#' @return lista Lista de tutoriales
lista_tutoriales <- function() {

  tutoriales <- learnr::available_tutorials(package = "ixpantia.introR")
  lista <- tutoriales$tutorials
  return(lista)
}
