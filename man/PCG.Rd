\name{PCG}
\alias{PCG}

\title{
Preconditioned Conjugate Gradient
}
\description{
Conduct preconditioned conjugate gradient method to accelerate.
}
\usage{
PCG(G,b,m.marker,sigma.k2,sigma.e2,tol,miter)
}

\arguments{
  \item{G}{genotype data.}
  \item{b}{column vector.}
  \item{m.marker}{the number of markers.}
  \item{sigma.k2}{variance of polygenic.}
  \item{sigma.e2}{variance of residual error.}
  \item{tol}{convergence threshold.}
  \item{miter}{the maximum number of iterations.}
}

\value{
\item{x}{x is approximate solution of linear equations.}
}

\examples{
data(geno)
G <- t(geno[,-c(1:4)])
n.sample <- dim(G)[1]
m.marker <- dim(G)[2]
b <- rnorm(n.sample)
sigma.k2 <- 6.0
sigma.e2 <- 10.0
tol <- 5e-4
miter <- 20
PCG(G,b,m.marker,sigma.k2,sigma.e2,tol,miter)
}
