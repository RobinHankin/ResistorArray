\name{Wu}
\alias{Wu}
\title{Wu's resistance matrix}
\description{
  Returns a matrix \code{M} with \code{M[i,j]} is the resistance between
  nodes \code{i} and \code{j}.
}
\usage{
Wu(L)
}
\arguments{
  \item{L}{Laplacian conductance matrix}
}
\details{
  Evaluates Wu's resistance matrix, as per his theorem on page 6656.
}
\value{
  Returns a matrix of the same size as \code{L}, but whose elements are
  the effective resistance between the nodes.
}
\references{

  F. Y. Wu, 2004. \dQuote{Theory of resistor networks: the two point resistance},
  Journal of Physics A, volume 37, pp6653-6673
}
\author{Robin K. S. Hankin}
\note{
    In the function, the sum is not from 2 to \code{n} as in Wu, but
    from 1 to \eqn{n-1}, because \code{eigen()}  orders the
    eigenvalues from largest to smallest, not smallest to largest.
}
\seealso{\code{\link{resistance}}}
\examples{

Wu(cube())

Wu(cube())[1,2] - resistance(cube(),1,2)

Wu(series(1:7))  # observe how resistance between, say, nodes 2
                 # and 5 is 9 (=2+3+4)

}
\keyword{array}
