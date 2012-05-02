\name{sunter}
\alias{sunter}
\title{
Sunter sampling
}
\description{
The function uses the Sunter's method to select a sample of units (unequal probabilities, without replacement, fixed sample size).}
\usage{
sunter(x, n)
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
a vector of size \eqn{n} that contains the selected units
}
\references{
C-E. Sarndal, B. Swensson, J. Wretman: Model Assisted Survey Sampling, Springer, New York, 1992
}
\author{
Alessandro Barbiero, Giancarlo Manzi
}
\note{
A special thank to Hugo Andres Gutierrez Rojas for a fruitful exchange of ideas on Sunter's sampling design.
Please note that the Sunter's sampling design here implemented corresponds to the version fully described in the reference below.
}
\seealso{
\code{\link{sunterpi}}, \code{\link{sunterpi2}}
}
\examples{
# from Sarndal et al. (1992)
x<-c(40,25,20,10,5)
n<-2
sunter(x,n)
}
\keyword{survey}
