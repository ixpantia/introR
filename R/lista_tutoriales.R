#' Función para listar los tutoriales disponibles en el paquete
#'
#' @import learnr
#' @return lista Lista de tutoriales
lista_tutoriales <- function() {

  tutoriales <- available_tutorials_for_package("ixpantia.introR")
  lista <- tutoriales$tutorials
  return(lista)
}
