\name{hypercube}
\alias{hypercube}
\concept{Boolean hypercube}
\title{Conductance matrix of a Boolean hypercube}
\description{
  Returns the conductance matrix of an n-dimensional hypercube
}
\usage{
hypercube(n)
}
\arguments{
  \item{n}{Integer giving the dimension of the hypercube}
}
\details{
  The row and columnnames give the coordinates of each node (which are
  in binary order)
}
\value{
  Returns a conductance matrix
}
\author{Robin K. S. Hankin}
\note{
  In the case of a 3D cube, the nodes are in a different order from that
  returned by \code{cube()} (which uses Maple's scheme).
}
\seealso{\code{\link{cube}}}
\references{
  \url{http://f2.org/maths/resnet/}
}
\examples{
hypercube(4)

resistance(hypercube(5),1,32)  # cf exact answer of 8/15 
resistance(hypercube(5),1,2)   # cf exact answer of n <- 5; (2^n-1)/(n*2^(n-1))=31/80

}
\keyword{math}
