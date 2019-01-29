\name{currents}
\alias{currents}
\alias{currents.matrix}
\title{Calculates currents in an arbitrary resistor array}
\description{
Calculates currents in an arbitrary resistor array
}
\usage{
currents(L, earth.node, input.node)
currents.matrix(L, earth.node, input.node)
}

\arguments{
  \item{L}{Lagrangian conductance matrix}
  \item{earth.node}{Number of node that is earthed (that is, at a
    potential of zero)}
  \item{input.node}{Number of node that has current put into it (a
    notional one Amp)}
}
\details{
  The methods used by the two functions are different; see documentation for
  \code{resistance()} for further details on input args 2 and 3
}
\value{
Function \code{currents()} returns a three column matrix, each row of
which corresponds to an edge.  The first two
columns show the node numbers specifying the edge, and the third shows
the current flowing along it.

Function \code{current.matrix()} uses a different method to return a
matrix of the same size as the conductance matrix \code{L}.  Each
element of the returned matrix shows the current flowing along the
specified edge.
}
\author{Robin K. S. Hankin}
\note{This function is essentially a simplified version of
  \code{circuit()}.}
\examples{
currents(cube(),1,7)
currents.matrix(cube(),1,7)

 #check above solution: print out the currents flowing into each node:
 zapsmall(apply(currents.matrix(cube(),1,7),1,sum))
}
\keyword{array}
