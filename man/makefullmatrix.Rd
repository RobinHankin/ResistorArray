\name{makefullmatrix}
\alias{makefullmatrix}
\alias{makefullmatrix_strict}
\title{Conductance matrix for a lattice of unit resistors}
\description{
Conductance matrix for a lattice of unit resistors
}
\usage{
makefullmatrix(R, C)
makefullmatrix_strict(R, C,toroidal)
}
\arguments{
  \item{R}{Number of rows of nodes}
  \item{C}{Number of columns of nodes}
  \item{toroidal}{Boolean, with \code{TRUE} meaning to return a
    toroidally connected lattice, and \code{FALSE} meaning to return a
    lattice with edges}
}
\details{
  
  The array produced by \code{makefullmatrix_strict(R,C,TRUE)} is
  toroidally connected.

  Function \code{makefullmatrix()} is not entirely straightforward.  The
  array produced is sort of toroidally connected.  I regard this
  function as the canonical one because it is more elegant (see example
  image).  Consider, for concreteness, the case with four rows and seven
  columns of nodes giving 28 nodes altogether.  Number these columnwise
  so the top row is 1,5,9,13,17,21,25.  Then number \eqn{n} corresponds
  to the row \eqn{n} and column \eqn{n} of the returned matrix.

  Now, \sQuote{interior} nodes are as expected: node 6, for example, is
  connected to 2,5,10,7.  And the wrapping is as expected in the
  horizontal: 1-25, 2-26, 3-27, and 4-28, are all connected.

  However, the vertical wrapping is not as might be expected. One might
  expect node 9, say, to be connected to 5,10 13,12; but in fact node 9
  is connected to nodes 5,8,10,13.  So there is a Hamiltonian path
  comprising entirely of vertical connections (function
  \code{makefullmatrix_strict(R,C,TRUE)} returns the \dQuote{expected}
  adjacency graph).

  For the arrays returned by functions documented here, one can
  determine pairwise resistances using function
  \code{array.resistance()}.
}
\value{
  Returns matrix of size \eqn{RC\times RC}{RC*RC}.  Note that this
  matrix is singular.
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{array.resistance}}}
\examples{
makefullmatrix(3,3)
image(makefullmatrix(4,7))              # A beautiful natural structure
image(makefullmatrix_strict(4,7,TRUE))  # A dog's breakfast
}
\keyword{array}
