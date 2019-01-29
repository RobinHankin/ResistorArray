\name{circuit}
\alias{circuit}
\title{Mensurates a circuit given potentials of some nodes and current
  flow into the others}
\description{
  Given a conductance matrix, a vector of potentials at each node, and a
  vector of current inputs  at each node (\code{NA} being interpreted as
  \dQuote{unknown}), this function determines the potentials at each
  node, and the currents along each edge, of the whole circuit.  
}
\usage{
circuit(L, v, currents=0, use.inverse=FALSE, give.internal=FALSE)
}
\arguments{
  \item{L}{Conductance matrix}
  \item{v}{Vector of potentials; one element per node.  Elements
    with \code{NA} are interpreted
    as \dQuote{free} nodes, that is, nodes that are not kept at a fixed
    potential.  The potential of these nodes is well defined by the other
    nodes in the problem.  Note that such nodes must have
    current inputs (which may be zero) specified by argument
    \code{currents}}
  \item{currents}{Vector of currents fed into each node.  The only
    elements of this vector that are used are those that correspond to a
    node with free potential (use \code{NA} for nodes that are at a
    specified potential).  The idea is that each node has
    \strong{either} a specified voltage, \strong{or} a specified current
    is fed into it; not both, and not neither.

    Observe that feeding zero current into a node at free potential is
    perfectly acceptable (and the usual case)}
\item{use.inverse}{Boolean, with default \code{FALSE} meaning to use
  \code{solve(A,b)} and \code{TRUE} meaning to use \code{solve(A)}, 
  thus incurring the penalty of evaluating a matrix inverse, which is
  typically to be avoided if possible.

  The default option should be faster most of the time, but YMMV}
  \item{give.internal}{Boolean, with \code{TRUE} meaning to return also
    a matrix showing the node-to-node currents, and default \code{FALSE}
    meaning to omit this}
}
\value{
  Depending on the value of Boolean argument \code{give.internal},
  return a list of either 2 or 4 elements:

    \item{potentials}{A vector of potentials.  Note that the potentials of the
      nodes whose potential was specified by input argument \code{v}
      retain their original potentials; symbolically
      \code{all(potentials[!is.na(v)] == v[!is.na(v)])}}
    \item{currents}{Vector of currents required to maintain the system
      with the potentials specified by input argument \code{v}}
    \item{internal.currents}{Matrix showing current flow from node to
      node.  Element \code{[i,j]} shows current flow from node \code{i} to
      node \code{j}.  This and the next two elements only supplied if
      argument \code{give.internal} is \code{TRUE}}
    \item{power}{The power dissipated at each edge}
    \item{total.power}{Total power dissipated over the resistor network}
}
\author{Robin K. S. Hankin}
\note{
  The SI unit of potential is the \dQuote{Volt}; the SI unit of current
  is the \dQuote{Ampere}}
\seealso{\code{\link{resistance}}}
\examples{

#reproduce first example on ?cube:
v <- c(0,rep(NA,5),1,NA)
circuit(cube(),v)
circuit(cube(),v+1000)

#  problem: The nodes  of a skeleton cube are at potentials
#  1,2,3,... volts.  What current is needed to maintain this?  Ans:
circuit(cube(),1:8)


#sanity check: maintain one node at 101 volts:
circuit(cube(),c(rep(NA,7),101))

#now, nodes 1-4 have potential 1,2,3,4 volts.  Nodes 5-8 each have one
#Amp shoved in them.  What is the potential of nodes 5-8, and what
#current is needed to maintain nodes 1-4 at their potential?
# Answer:
v <- c(1:4,rep(NA,4))
currents <- c(rep(NA,4),rep(1,4))
circuit(cube(),v,currents)

# Now back to the resistance of a skeleton cube across its sqrt(3)
# diagonal.  To do this, we hold node 1 at 0 Volts, node 7 at 1 Volt,
# and leave the rest floating (see argument v below); we
# seek the current at nodes 1 and 7
# and insist that the current flux into the other nodes is zero
# (see argument currents below):

circuit(L=cube(),v=c(0,NA,NA,NA,NA,NA,1,NA),currents=c(NA,0,0,0,0,0,NA,0))

# Thus the current is 1.2 ohms and the resistance (from V=IR)
# is just 1/1.2 = 5/6 ohms, as required.

}
\keyword{array}
