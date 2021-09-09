\name{multinormal}
\alias{multinormal}
\title{
Multivariate normal distribution
}
\description{
Obtain P value with multivariate normal distribution.
}
\usage{
multinormal(y,mean,sigma)
}

\arguments{
  \item{y}{column vector.}
  \item{mean}{arithmetic mean.}
  \item{sigma}{standard deviation.}
}

\value{
\item{pdf_value}{A vector of multivariate normal distribution
density function.}
}

\examples{
data(pheno)
y <- pheno
mean <- 2.0
sigma <- 1.5
multinormal(y,mean,sigma)
}
