The ResistorArray package: electrical properties of resistor arrays
================

<!-- README.md is generated from README.Rmd. Please edit that file -->

<img src="man/figures/ResistorArray.png" width = "150" align="right" />

[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/ResistorArray?color=green)](https://cran.r-project.org/package=ResistorArray)
![](https://cranlogs.r-pkg.org/badges/grand-total/ResistorArray?color=green)
![](https://cranlogs.r-pkg.org/badges/ResistorArray?color=green)
![](https://cranlogs.r-pkg.org/badges/last-week/ResistorArray?color=green)
[![Rdoc](https://www.rdocumentation.org/badges/version/ResistorArray)](http://www.rdocumentation.org/packages/ResistorArray)

[![saythanks](https://img.shields.io/badge/say-thanks-ff69b4.svg)](https://saythanks.io/to/RobinHankin)

------------------------------------------------------------------------

# Overview

The `ResistorArray` package gives functionality for calculating
electrical properties of resistor networks. Any array of resistors may
be implemented and a number of special arrays are given as data. For
example, a skeleton cube has 8 nodes and a conductance matrix for unit
resistors along each edge is given by `cube()`:

``` r
cube()
```

    ##      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8]
    ## [1,]    3   -1    0   -1   -1    0    0    0
    ## [2,]   -1    3   -1    0    0   -1    0    0
    ## [3,]    0   -1    3   -1    0    0   -1    0
    ## [4,]   -1    0   -1    3    0    0    0   -1
    ## [5,]   -1    0    0    0    3   -1    0   -1
    ## [6,]    0   -1    0    0   -1    3   -1    0
    ## [7,]    0    0   -1    0    0   -1    3   -1
    ## [8,]    0    0    0   -1   -1    0   -1    3

A common puzzle is to calculate the resistance of such a cube between
diagonally opposite corners, the answer being
![1/3+1/6=1/3=5/6](https://latex.codecogs.com/png.latex?1%2F3%2B1%2F6%3D1%2F3%3D5%2F6 "1/3+1/6=1/3=5/6")
(the trick being to observe that nodes equidistant from the corners are
at the same potential). This is easily reproduced in the package:

``` r
resistance(cube(),1,7)
```

    ## [1] 0.8333333

However, the trick does not work for general resistances but the package
has no problem:

``` r
resistance(cube(1:12),1,7)
```

    ## [1] 4.766791

The package includes many other convenience functions; it is still under
development.

# Installation

To install the most recent stable version on CRAN, use
`install.packages()` at the R prompt:

    R> install.packages("ResistorArray")

To install the current development version use `devtools`:

    R> devtools::install_github("RobinHankin/ResistorArray")

And then to load the package use `library()`:

``` r
library("ResistorArray")
```

### Reference

R. K. S. Hankin 2006. “Resistor networks in R: introducing the
`ResistorArray` package”. *R News*, 6(2),52-54
