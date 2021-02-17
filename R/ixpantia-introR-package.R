#' @import dplyr
NULL

#' @title Practicar con tutorial
#'
#' @description Despliega el tutorial elegido por su nombre en un navegador web
#'
#' @details La función necesita que en el computador docker esté instalado y que
#' se hayan agregado las lineas siguientes en la terminal:
#'
#' @param nombre_tutorial Es el nombre de uno de los tutoriales dentro del
#' paquete ixpantia.introR
#'
#' @examples
#'\dontrun{
#' practicar("pizarra_coercion")
#'}
practicar <- function(nombre_tutorial) {
  tutoriales <- available_tutorials("ixpantia.introR") %>%
    as_tibble()

  nombres <- tutoriales %>%
    select(name) %>%
    pull()

  if (!nombre_tutorial %in% nombres) {
    nombres <- tutoriales %>%
      select(name) %>%
      pull()
    print("Nombre no válido. Elegir alguno de los siguientes:")
    nombres
  }

  learnr::run_tutorial(nombre_tutorial, package = "ixpantia.introR")
  # learnr::run_tutorial("pizarra_coercion", package = "ixpantia.introR")

  # paquetes <- tutorial_package_dependencies(package = "ixpantia.introR")
  # install.packages(paquetes)
}

#' @title Listar tutoriales
#'
#' @description Genera una lista con los tutoriales dis
#'
#' @details La función necesita que en el computador docker esté instalado y que
#' se hayan agregado las lineas siguientes en la terminal:
#'
#' @param tipo Es el tipo del tutorial que queremos listar. Puede ser `tarea` o
#' `pizarra`
#'
#' @examples
#'\dontrun{
#' practicar("pizarra_coercion")
#'}
listar_tutoriales <- function(tipo) {

  if (tipo == "tarea") {
    tutoriales <- available_tutorials("ixpantia.introR") %>%
      tibble::as_tibble() %>%
      filter(startsWith(name, "tarea"))
  } else if (tipo == "pizarra") {
    tutoriales <- available_tutorials("ixpantia.introR") %>%
      tibble::as_tibble() %>%
      filter(startsWith(name, "pizarra"))
  }
  return(tutoriales)
}

