\name{ResistorArray-package}
\alias{ResistorArray-package}
\alias{ResistorArray}
\docType{package}
\title{
Electrical properties of resistor networks
}
\description{
Electrical properties of resistor networks such as the resistance
between any two nodes and the current that passes along any wire
}
\details{
\tabular{ll}{
Package: \tab ResistorArray\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2007-01-23\cr
License: \tab GPL\cr
}
The package uses matrix methods to determine resistances between nodes
of a resistor network.  
}
\author{
Robin K. S. Hankin

Maintainer: <hankin.robin@gmail.com>
}
\references{
Rnews 2006.
}
\keyword{ package }
\examples{
# resistance between opposite corners of a skeleton cube:
resistance(cube(),1,7)   # known to be 5/6 Ohm

# resistance of a Jacob's ladder:
 resistance(ladder(60),1,2)  # should be about (sqrt(5)-1)/2

# Google aptitude test:
 array.resistance(1,2,15,17)  # analytical answer 4/pi-1/2
}
