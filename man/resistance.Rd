\name{resistance}
\alias{resistance}
\title{Resistance for arbitrarily connected networks of resistors}
\description{
Given a resistance matrix, return the resistance between two specified nodes.
}
\usage{
resistance(A, earth.node, input.node, current.input.vector=NULL, give.pots = FALSE)
}
\arguments{
  \item{A}{Resistance matrix}
  \item{earth.node}{Number of node that is earthed}
  \item{input.node}{Number of node at which \strong{current} is put in: a
    nominal 1 Amp}
  \item{current.input.vector}{Vector of
    currents that are fed into each node.  If supplied, overrides the
    value of \code{input.node}, and effectively sets \code{give.pots}
    to \code{TRUE} because if various currents are fed into the network
    at various points, the concept of \dQuote{resistance} becomes
    meaningless.

    Setting this argument to \code{c(0,...,0,1,0,..0)} (where the
    \dQuote{1} is element \code{jj}) is equivalent to not setting
    \code{current.input.vector} and setting \code{input.node} to
    \code{jj}. 
  }
  \item{give.pots}{Boolean, with \code{TRUE} meaning to return the
  potential of each node (\code{out.node} being at zero potential);
  and default \code{FALSE} meaning to return just the resistance between
  \code{in.node} and \code{out.node}.}
}
\details{
  The function's connection to resistor physics is quite opaque.
  It is effectively a matrix version of Kirchoff's law, that the
  (algebraic) sum of currents into a node is zero.  
}

\author{Robin K. S. Hankin}
\note{
  This function is essentially a newbie wrapper for \code{circuit()},
  which solves a much more general problem.  The function documented
  here, however, is clearer and (possibly) faster; it also gives an
  explicit resistance if \code{give.pots} is not set.

  Use function \code{currents()} (or \code{currents.matrix()}) to
  calculate the currents flowing in the resistor array.  
  }
 
\seealso{\code{\link{array.resistance}}}
\references{
  \itemize{
    \item B. Bollob\'{a}s, 1998.  \emph{Modern Graph Theory}.  Springer.
    
    \item F. Y. Wu, 2004.  \dQuote{Theory of resistor networks: the two
      point resistance}, \emph{Journal of Physics A}, volume 37, pp6653-6673
    
    \item G. Venezian 1994. \dQuote{On the resistance between two points
      on a grid}, \emph{American Journal of Physics}, volume 62, number 11,
    pp1000-1004.
    
    \item J. Cserti 2000.  \dQuote{Application of the lattice Green's
      function for calculating the resistance of an infinte network of
      resistors}, \emph{American Journal of Physics}, volume 68, number 10,
    p896-906
    
    \item D. Atkinson and F. J. van Steenwijk 1999.  \dQuote{Infinite
      resistive lattices}, \emph{American Journal of Physics}, volume 67,
    number 6, pp486-492
    }
}
\examples{
  resistance(cube(),earth.node=1, input.node=7) #known to be 5/6 ohm
  resistance(cube(),1,7, give=TRUE)
}
\keyword{array}

