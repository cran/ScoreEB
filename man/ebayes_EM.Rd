\name{ebayes_EM}
\alias{ebayes_EM}
\title{
Empirical Bayes for multi-locus selection
}
\description{
Empirical Bayes using expectation–maximization algorithm.
}
\usage{
ebayes_EM(x,z,y,EMB.tau,EMB.omega)
}

\arguments{
  \item{x}{fixed effect vector or matrix.}
  \item{z}{genotype data.}
  \item{y}{phenotype data.}
  \item{EMB.tau}{one of hyperparameters in inverse chi-square distribution.}
  \item{EMB.omega}{one of hyperparameters in inverse chi-square distribution.}
}

\value{
\item{u}{The effect values of markers, and their absolute values are used as the basis
for further screening.}
}

\examples{
data(geno)
data(pheno)
EMB.tau <- 0
EMB.omega <- 0
z <- t(geno[,-c(1:4)])
y <- as.matrix(pheno)
nsample <- dim(z)[1]
x <- as.matrix(rep(1,nsample))
ebayes_EM(x,z,y,EMB.tau,EMB.omega)
}
