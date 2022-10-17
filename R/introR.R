#' \code{introR} package
#'
#' Aprenda R con ejercicios interactivos del curso introducción a R de ixpantia
#'
#' La documentación es parte de este paquete, por favor usar el eslabón `index`
#' que aparece aqui abajo.
#'
#' @docType package
#' @name introR
#' @importFrom utils install.packages
NULL

## Resuelve los avisos en R CMD Check sobre variables usadas en llamados NSE
utils::globalVariables(c(".", "available_tutorials", "install.packages",
                         "tutorial_package_dependencies", "name"))
