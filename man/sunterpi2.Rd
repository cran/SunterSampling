\name{sunterpi2}
\alias{sunterpi2}
\title{
Joint inclusion probabilities for Sunter sampling
}
\description{
The function computes the joint (second-order) inclusion probabilities for Sunter sampling. 
}
\usage{
sunterpi2(x, n)
}
\arguments{
  \item{x}{
the vector of values of the auxiliary variable (measure of size)
}
  \item{n}{
the sample size
}
}
\value{
Returns a \eqn{NxN} matrix of the following form: the main diagonal contains the first-order inclusion probabilities for each unit \eqn{k} in the population; elements \eqn{(k,l)} are the joint inclusion probabilities of units \eqn{k} and \eqn{l}, with \eqn{k} not equal to \eqn{l}. \eqn{N} is the population size.
}
\references{
C-E. Sarndal, B. Swensson, J. Wretman: Model Assisted Survey Sampling, Springer, New York, 1992}
\author{
Alessandro Barbiero, Giancarlo Manzi
}
\seealso{
\code{\link{sunter}}, \code{\link{sunterpi}}
}
\examples{
# from Sarndal et al. (1992)
x<-c(40,25,20,10,5)
n<-2
sunterpi2(x,n)
}
\keyword{survey}