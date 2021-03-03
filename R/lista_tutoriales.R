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
    tibble::as_tibble()

  nombres <- tutoriales %>%
    select(name) %>%
    pull()

  if (!nombre_tutorial %in% nombres) {
    nombres <- tutoriales %>%
      select(name) %>%
      pull()
    print("Nombre no v\xc3\xa1clido. Elegir alguno de los siguientes:")
    nombres
  }

  learnr::run_tutorial(nombre_tutorial, package = "ixpantia.introR")
}

#' @title Listar tutoriales
#'
#' @description Genera una lista con los tutoriales disponibles en el paquete.
#'
#' @details La función permitar dar una lista de los tutoriales disponibles en
#' el paquete por su tipo, ya sea tarea o pizarra.
#'
#' @param tipo Es el tipo del tutorial que queremos listar. Puede ser `tarea` o
#' `pizarra`
#'
#' @examples
#'\dontrun{
#' listar_tutoriales(tipo = "pizarra")
#'}
listar_tutoriales <- function(tipo) {

  if (is.null(tipo)) {
    "Por favor indique el tipo del tutorial"
  }

  if (tipo == "tarea") {
    tutoriales <- learnr::available_tutorials("ixpantia.introR") %>%
      tibble::as_tibble() %>%
      dplyr::filter(startsWith(name, "tarea"))
  } else if (tipo == "pizarra") {
    tutoriales <- learnr::available_tutorials("ixpantia.introR") %>%
      tibble::as_tibble() %>%
      dplyr::filter(startsWith(name, "pizarra"))
  }
  return(tutoriales)
}

#' @title Instalar dependendencias
#'
#' @description Muestra las dependencias del paquete ixpantia.introR que son
#' necesarias para poder practicar con los tutoriales interactivos
#'
#' @details El paquete ixpantia.introR toma en cuenta una cantidad de paquetes
#' que son necesarios para practicar con los tutoriales interactivos. Sino
#' tenemos estos paquetes instalados en nuestro computador, no podremos hacer
#' uso de los tutoriales. Si en algún caso no sabemos cuál paquete nos falta,
#' esta función nos dará la lista de dependencias.
#'
#' @param tipo Es el tipo del tutorial que queremos listar. Puede ser `tarea` o
#' `pizarra`
#'
#' @examples
#'\dontrun{
#' listar_tutoriales(tipo = "pizarra")
#'}
revisar_dependencias <- function(instalar = FALSE) {

  if (instalar == TRUE) {
    # Si defino paquetes fuera no realiza la instalacion y busca el objeto
    install.packages(tutorial_package_dependencies(package = "ixpantia.introR"))
  } else {
    return(tutorial_package_dependencies(package = "ixpantia.introR"))
  }
}



