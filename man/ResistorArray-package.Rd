\name{ResistorArray-package}
\alias{ResistorArray-package}
\alias{ResistorArray}
\docType{package}
\title{
\packageTitle{ResistorArray}
}
\description{
\packageDescription{ResistorArray}
}
\details{
The DESCRIPTION file:
\packageDESCRIPTION{ResistorArray}
\packageIndices{ResistorArray}

}
\author{
\packageAuthor{ResistorArray}
}
\references{
R.K.S. Hankin 2006. "Resistor networks in R: introducing the 'ResistorArray' package".
R News, volume 6, number 2.
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
