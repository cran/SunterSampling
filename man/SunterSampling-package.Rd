\name{SunterSampling-package}
\alias{SunterSampling-package}
\alias{SunterSampling}
\docType{package}
\title{
Sunter sampling
}
\description{
The package provides functions for drawing samples according to Sunter's sampling design, which is an approximate probability proportional to size design, and for computing its first and second order inclusion probabilities
}
\details{
\tabular{ll}{
Package: \tab SunterSampling\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2012-05-02\cr
License: \tab GPL\cr
LazyLoad: \tab yes\cr
}
}
\author{
Alessandro Barbiero <alessandro.barbiero@unimi.it>, Giancarlo Manzi <giancarlo.manzi@unimi.it>

Maintainer: alessandro.barbiero@unimi.it
}
\references{
C-E. Sarndal, B. Swensson, J. Wretman: Model Assisted Survey Sampling, Springer, New York, 1992 (pp.93-96)}
\keyword{ package}
\seealso{
\code{\link{sunter}}, \code{\link{sunterpi}}, \code{\link{sunterpi2}}
}
\examples{
# from Sarndal et al. (1992)
x<-c(40,25,20,10,5)
n<-2
pi<-sunterpi(x,n) # first order inclusion probabilities
pi2<-sunterpi2(x,n) # second order inclusion probabilities
apply(pi2,2,sum) # they should be equal to...
n*pi # OK!
sunter(x,n) # sample drawn according to Sunter's design
}
