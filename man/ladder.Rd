\name{ladder}
\alias{ladder}
\title{Jacob's ladder of resistors}
\description{
  A potentially infinite resistor network.
  Consider node 1 to be Earth.  Nodes \eqn{2,\ldots,
  n}{2,...,n}  are each connected to node 1 by a resistor.  For
  \eqn{1<i<n}, node \eqn{i} is connected to node \eqn{i+1}. 
}
\usage{
ladder(n, x = 1, y = 1, z = NULL)
}
\arguments{
  \item{n}{Number of nodes}
  \item{x}{Resistance of resistors connected to node 1 (earth). Standard
    recycling rules are used}
  \item{y}{Resistance of the other  resistors (ie those not connected to
    earth).  Standard recycling rules are used}
  \item{z}{Resistance of \emph{all} resistors in the network.  If
    non-\code{NULL}, \code{x} and \code{y} are discarded}
}
\value{
  Returns a standard conductance matrix
}
\author{Robin K. S. Hankin}
\seealso{\code{\link{cube}}, \code{\link{series}}}
\examples{

#  Resistance of an infinite Jacob's ladder with unit resistors is known
#  to be (sqrt(5)-1)/2:

 phi <- (sqrt(5)-1)/2
 resistance(ladder(20),1,2) - phi
 resistance(ladder(60),1,2) - phi

 Wu(ladder(20))[1,2]-phi


# z is the resistance of all the resistors:

 ladder(n=8,z=1/(1:13))

# See how node 1 is the "earth", with resistors of conductance 1,2,...,7
#  connecting to nodes 2-8.  Then nodes 5 & 6, say, are connected by a
#  resistor of conductance 11.

}
\keyword{array}
