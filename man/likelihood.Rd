\name{likelihood}
\alias{likelihood}

\title{
Carry out likelihood ratio test
}
\description{
Snps selected via EM-Bayes to further identified by likelihood ratio test.
}
\usage{
likelihood(xxn,xxx,yn,bbo)
}

\arguments{
  \item{xxn}{fixed effect vector or matrix.}
  \item{xxx}{snp matrix which are selected by EM-Bayes.}
  \item{yn}{phenotype data.}
  \item{bbo}{effect value of snp estimated by EM-Bayes.}
}

\value{
\item{lod}{Odds of logarithm vector of markers.}
}

\examples{
data(geno)
data(pheno)
z <- t(geno[,-c(1:4)])
y <- as.matrix(pheno)
n.sample <- dim(z)[1]
m.marker <- dim(z)[2]
x <- as.matrix(rep(1,n.sample))
beta <- rnorm(m.marker)
likelihood(x,z,y,beta)
}
