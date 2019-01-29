\name{platonic}
\alias{platonic}
\title{Adjacency of platonic solids}
\description{
Gives the adjacency indices of the five Platonic solids.
}
\usage{
platonic(a)
}
\arguments{
  \item{a}{String containing name of one of the five Platonic solids,
    viz \dQuote{tetrahedron}, \dQuote{cube}, \dQuote{octahedron},
    \dQuote{dodecahedron}, \dQuote{icosahedron}}
}
\details{
  Returns a two column matrix \code{a}, the rows of which show the two
  vertices of an edge.  Only
  edges with \code{a[i,1]<i[i,2]} are included.

  For the dodecahedron and icosahedron, the nodes are numbered as per
  Maple's scheme.
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{cube}}}
\examples{
platonic("octahedron")
}
\keyword{array}
