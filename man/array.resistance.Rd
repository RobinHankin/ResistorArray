\name{array.resistance}
\alias{array.resistance}
\title{Resistance between two arbitrary points on a regular lattice of
 unit resistors
  }
\description{
  Given two points on a regular lattice of electrical nodes joined by unit
  resistors (as created by \code{makefullmatrix()}), returns the
  resistance between the two points, or (optionally) the potentials of
  each lattice point when unit current is fed into the first node, and the
  second is earthed.
}
\usage{
array.resistance(x.offset, y.offset, rows.of.resistors,
  cols.of.resistors, give.pots = FALSE)
}
\arguments{
  \item{x.offset}{Earthed node is at \eqn{(0,0)}{(0,0)}, second node is at
    \code{(x.offset, y.offset)}}
  \item{y.offset}{Earthed node is at \eqn{(0,0)}{(0,0)}, second node is at
    \code{(x.offset, y.offset)}}
  \item{rows.of.resistors}{Number of rows of resistors in the network
    (positive integer)}
  \item{cols.of.resistors}{Number of columns of resistors in the network
    (positive integer)}
  \item{give.pots}{Boolean, with \code{TRUE} meaning to return a matrix
    of potentials of the electrical nodes, and \code{FALSE} meaning to
    return the resistance between the origin and the current input node}
}
\details{
Note that the electrical network is effectively toroidal.
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{makefullmatrix}}}
\examples{
jj.approximate <-  array.resistance(1,2,15,17,give=FALSE)
jj.exact <- 4/pi-1/2
print(jj.exact - jj.approximate)

persp(array.resistance(4,0,14,16,give=TRUE),theta=50,r=1e9,expand=0.6)
}
\keyword{array}
