\name{cube}
\alias{cube}
\alias{tetrahedron}
\alias{octahedron}
\alias{dodecahedron}
\alias{icosahedron}
\alias{wheatstone}
\alias{Wheatstone}
\title{Specimen conductance matrices}
\description{
Various conductance matrices for simple resistor configurations
including a skeleton cube
}
\usage{
cube(x=1)
octahedron(x=1)
tetrahedron(x=1)
dodecahedron(x=1)
icosahedron(x=1)
}
\arguments{
  \item{x}{Resistance of each edge.  See details section}
}
\details{
  Function \code{cube()} returns an eight-by-eight conductance matrix
  for a skeleton cube of 12 resistors.  Each row/column corresponds to
  one of the 8 vertices that are the electrical nodes of the compound
  resistor.

  In one orientation, node 1 has position 000, node 2 position 001, node 3
  position 101, node 4 position 100, node 5 position 010, node 6 position
  011, node 7 position 111, and node 8 position 110.

  In \code{cube()}, \code{x} is a vector of twelve elements (a scalar
  argument is interpreted as the resistance of each resistor)
  representing the twelve resistances of a skeleton cube.  In the
  orientation described below, the elements of \code{x} correspond to
  \eqn{R_{12}}{R_12}, \eqn{R_{14}}{R_14}, \eqn{R_{15}}{R_15},
  \eqn{R_{23}}{R_23}, \eqn{R_{26}}{R_26}, \eqn{R_{34}}{R_34},
  \eqn{R_{37}}{R_37}, \eqn{R_{48}}{R_48}, \eqn{R_{56}}{R_56},
  \eqn{R_{58}}{R_58}, \eqn{R_{67}}{R_67}, \eqn{R_{78}}{R_78} (here
  \eqn{R_{ij}}{R_ij} is the resistance between node \eqn{i}{i}  and
  \eqn{j}{j}).  This series is obtainable by reading the rows given by
  \code{platonic("cube")}.  The pattern is general: edges are ordered
  first by the row number \eqn{i}, then column number \eqn{j}.
  
  In \code{octahedron()}, \code{x} is a vector of twelve elements (again
  scalar argument is interpreted as the resistance of each resistor)
  representing the twelve resistances of a skeleton octahedron.  If node 1
  is \dQuote{top} and node 6 is \dQuote{bottom}, the elements of \code{x}
  correspond to
  \eqn{R_{12}}{R_12}, \eqn{R_{13}}{R_13}, \eqn{R_{14}}{R_14},
  \eqn{R_{15}}{R_15}, \eqn{R_{23}}{R_23}, \eqn{R_{25}}{R_25},
  \eqn{R_{26}}{R_26}, \eqn{R_{34}}{R_34}, \eqn{R_{36}}{R_36}, 
  \eqn{R_{45}}{R_45}, \eqn{R_{46}}{R_46}, \eqn{R_{56}}{R_56}.
  This may be read off from the rows of \code{platonic("octahedron")}.

  To do a Wheatstone bridge, use \code{tetrahedron()} with one of the
  resistances \code{Inf}.  As a worked example, let us determine the
  resistance of a Wheatstone bridge with four resistances one ohm and
  one of two ohms; the two-ohm resistor is one of the ones touching the
  earthed node.

  To do this, first draw a tetrahedron with four nodes.  Then say we
  want the resistance between node 1 and node 3; thus edge 1-3 is the
  infinite one.  \code{platonic("tetrahedron")} gives us the order of
  the edges: 12, 13, 14, 23, 24, 34.  Thus the conductance matrix is
  given by \code{jj <- tetrahedron(c(2,Inf,1,1,1,1))} and the resistance
  is given by \code{resistance(jj,1,3)} [compare the analytical answer
  of 117/99 ohms].


}
\references{
  F. J. van Steenwijk \dQuote{Equivalent resistors of polyhedral
    resistive structures}, American Journal of Physics, 66(1), January
  1988.
  }  
\author{Robin K. S. Hankin}
\examples{

 resistance(cube(),1,7)  #known to be 5/6 ohm
 resistance(cube(),1,2)  #known to be 7/12 ohm

 resistance(octahedron(),1,6) #known to be 1/2 ohm
 resistance(octahedron(),1,5) #known to be 5/12 ohm

 resistance(dodecahedron(),1,5) 

}
\keyword{array}

