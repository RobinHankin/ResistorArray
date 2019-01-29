\name{SquaredSquare}
\alias{SquaredSquare}
\alias{squaredsquare}
\alias{Squaredsquare}
\docType{data}
\title{A Squared square}
\description{
A resistor network corresponding to a squared square
}
\usage{
data(SquaredSquare)
}
\format{
Returns a conductance matrix
}
\details{
  The nodes are ordered so that the potentials are in increasing order.
  }
\source{
Bollobas 1998
}
\examples{
data(SquaredSquare)
resistance(SquaredSquare,1,13) # should be 1

circuit(L=SquaredSquare,currents=c(NA,rep(0,11),1),v=c(0,rep(NA,12)))$potentials
# should be in increasing order

}
\keyword{datasets}
