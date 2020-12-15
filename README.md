
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ixpantia.introR <a href="url"><img src="man/figures/ixpantia_cursos.png" align="right" width="30%"></a>

<!-- badges: start -->

[![CRAN
status](https://www.r-pkg.org/badges/version/ixpantia.introR)](https://cran.r-project.org/package=ixpantia.introR)
<!-- badges: end -->

El paquete `ixpantia.introR` le permitirá hacer uso de los tutoriales
interactivos en su IDE de RStudio. Una forma para estudiar y practicar
conceptos de R aprendidos en los cursos de ixpantia.

## Instalación

Antes de instalar este paquete, primero debemos de realizar la
instalación del paquete que se llama `gradethis`.

Esto porque uno de los componentes del `ixpantia.introR` es el paquete
[gradethis](https://github.com/rstudio-education/gradethis), sin embargo
este no se encuentra publicado aún en el CRAN y por ende debemos de
instalarlo desde su versión en desarrollo en Github. Podemos correr el
siguiente comando para hacerlo:

``` r
remotes::install_github("rstudio-education/gradethis")
```

Recuerda que **necesitamos** además tener las **versiones más
recientes** de **R ( \>=4.0.2) y RStudio (\>=1.3.959)** para tener la
funcionalidad de los tutoriales dinámicos.

Una vez instalado el `gradethis` podemos proceder a instalar
`ixpantia.introR`. Hay dos formas de instalar el paquete en su
computador. Una es hacerlo directamente del repositorio en GitHub
(versión en desarrollo) con el siguiente comando.

Este comando lo puedes copiar y pegar en la consola de RStudio. Una vez
pegado se presiona la tecla **Enter** para que se ejecute e
inmediatamente iniciará el proceso de la descarga.

``` r
remotes::install_github("ixpantia/ixpantia.introR")
```

Una segunda forma es que cuente con el archivo `.tar.gz` en su
computador. Cuando lo haya descargado, abra RStudio y desde la pestaña
de **Tools** haga click en **Install packages**

Una vez que se despliega el cuadro de diálogo, debe de elegir que la
instalación se hará desde un archivo local (el archivo .tar.gz) e
inmediatamente se abrirá una nueva ventana para que busque el archivo.

Una vez seleccionado el archivo, hay que dar click en **Install** e
iniciará el proceso de instalación.

**Errores de instalación**

En caso de que aparezcan mensajes como por ejemplo:

``` r
Warning in install.packages :
  package ‘remotes’ is not available (for R version 4.0.2)
```

Lo que debemos hacer es instalar el paquete que nos indica (en el
ejemplo anterior sería el paquete remotes que no tenemos instalado).
Esto lo hacemos con la función

``` r
install.packages("remotes")
```

En caso de que no nos siga funcionando problamente nos faltan las
comillas o bien estamos escribiendo mal el nombre.

## Usando los tutoriales dinámicos

Una vez instalado el paquete podemos encontrar que tenemos una pestaña
en la interfaz de RStudio llamada **Tutorial**. Al abrirla vamos a
encontrar distintos tutoriales, entre estos los de ixpantia. Deberíamos
de poder visualizar algo similar a la imagen siguiente:

![](man/figures/tutoriales_ixpantia.png) Para usar uno de los tutoriales
nada mas debes presionar el botón `Start Tutorial` y se desplegará ell
tutorial en tu RStudio o en tu navegador.

Notarás que hay en algunos casos dos tutoriales por sesión. Ambos son
ejercicios que se pueden completar de manera autoguiada, sin embargo, si
estás en un curso de ixpantia la distinción va a estar en su uso durante
la sesión o para realizar como tareas.

## Tutorial de uso del paquete en vivo

En [este video](https://www.youtube.com/watch?v=jBSDZ1Juji4) puedes
encontrar un tutorial rápido de uso e instalación del paquete. Puedes
seguirlo paso a paso para poder utilizar el paquete o bien, como
referencia rápida si posteriormente no recuerdas cómo hacerlo.

## Ayuda o sugerencias

Si tenés dudas sobre el uso del paquete o sugerencias para mejorarlo,
por favor escríbanos a *<hola@ixpantia.com>* o bien podés abrirnos un
[tiquete](https://github.com/ixpantia/ixpantia.introR/issues)
