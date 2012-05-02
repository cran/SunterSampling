\name{sunterpi}
\alias{sunterpi}
\title{
Inclusion probabilities for Sunter sampling
}
\description{
The function computes the inclusion probabilities for Sunter sampling. 
}
\usage{
sunterpi(x, n)
}
\arguments{
  \item{x}{
the vector of values of the auxiliary variable (measure of size)
}
  \item{n}{
the sample size
}
}
\details{
Citing the reference, "For the most part of the population, Sunter's scheme gives the inclusion probability \eqn{\pi_k} strictly proportional to \eqn{x_k}. For a small portion of the population, corresponding to the elements with the smallest \eqn{x_k}-values, equal, rather than \eqn{x_k}-proportional, inclusion probability is applied to gain simplicity."
}
\value{
a vector that contains the first-order inclusion probabilities for each unit \eqn{k} in the population; \eqn{N} is the population size.
}
\references{
C-E. Sarndal, B. Swensson, J. Wretman: Model Assisted Survey Sampling, Springer, New York, 1992}
\author{
Alessandro Barbiero, Giancarlo Manzi
}
\seealso{
\code{\link{sunter}}, \code{\link{sunterpi2}}
}
\examples{
# Ex.1 from Sarndal et al. (1992)
x<-c(40,25,20,10,5)
n<-2
sunterpi(x,n)
# note that the inclusion probabilities are not exactly proportional
# to the measures of size
n*x/sum(x)

# Ex.2
# set the population size
N<-100
set.seed(1)
# build a vector of measures of size
x<-rnorm(N,100,25)
sort(x)
# set the sample size
n<-10
# inclusion probabilities for Sunter's sampling
pi<-sunterpi(x,n)
pi
# theoretical inclusion probabilities
pik<-n*x/sum(x)
pik
# note the difference between actual and theoretical inclusion probabilities
sort(pi)
sort(pik)
}
\keyword{survey}