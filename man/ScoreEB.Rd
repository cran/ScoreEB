\name{ScoreEB}
\alias{ScoreEB}
\docType{package}
\title{
Score Test Integrated with Empirical Bayes for Association Study
}
\description{
Perform association test within linear mixed model framework using score test integrated with Empirical Bayes for genome-wide association study. Firstly, score test was conducted for each marker under linear mixed model framework, taking into account the genetic relatedness and population structure. And then all the potentially associated markers were selected with a less stringent criterion. Finally, all the selected markers were placed into a multi-locus model to identify the true quantitative trait nucleotide.
}
\usage{
ScoreEB(genofile, phenofile, popfile = NULL, trait.num = 1, EMB.tau = 0,
EMB.omega = 0, B.Moment = 20, tol.pcg = 1e-4, iter.pcg = 100, bin = 100,
lod.cutoff = 3.0, seed.num = 10000, dir_out)
}
\arguments{
  \item{genofile}{Genotype file name, change the file path where it is located,
  i.e.,"D:/Genotype_Example.csv".}
  \item{phenofile}{Phenotype file name, change the file path where it is located,
  i.e.,"D:/Phenotype_Example.csv".}
  \item{popfile}{Population structure file name, change the file path
    where it is located,i.e.,"D:/Population.csv".}
  \item{trait.num}{trait.num stands for computing trait from the 1st to the "trait.num"}
  \item{EMB.tau}{EMB.tau and EMB.omega are two values of hyperparameters in
  empirical Bayes step, which are set to 0 by default.}
  \item{EMB.omega}{As describe in EMB.tau}
  \item{B.Moment}{B.Moment is a parameter to obtain trace of NxN matrix approximately
  using method of moment. B.Moment is set to 20 by default.}
  \item{tol.pcg}{tol.pcg and iter.pcg are tolerance and maximum iteration number in
  preconditioned conjugate gradient algorithm.}
  \item{iter.pcg}{As describe in tol.pcg}
  \item{bin}{bin is to choose the maximum score within a certain range.}
  \item{lod.cutoff}{lod.cutoff is the threshold to determine identified QTNs.}
  \item{seed.num}{Set a random number.}
  \item{dir_out}{Give the path where it will be saved,i.e.,"D:/Result"}
}

\value{
\item{result.total}{A data frame of identified markers, including "Trait", "Id", "Chr",
"Pos", "Score", "Beta", "Lod" and "Pvalue" of markers.}
}

\author{
  Wenlong Ren\cr
  Wenlong Ren <wenlongren@ntu.edu.cn>\cr
}
\note{
1. genofile and phenofile are the required input file, while popfile is the optional input file.\cr
2. In the "tempdir()" folder, there are two results files "ScoreEB.Result.csv" and "ScoreEB.time.csv" generated and saved after the run.\cr
3. The results file "ScoreEB.Result.csv" has 8 columns, including "Trait", "Id", "Chr", "Pos", "Score", "Beta", "Lod" and "Pvalue".\cr
4. The time file "ScoreEB.time.csv" includes 3 rows, which are "User", "System", "Elapse" time, respectively.\cr
}
\examples{
genofile <- system.file("extdata", "Genotype_Example.csv", package="ScoreEB")
phenofile <-system.file("extdata", "Phenotype_Example.csv", package="ScoreEB")
dir_out <- tempdir()
ScoreEB(genofile, phenofile, popfile = NULL, trait.num = 1, EMB.tau = 0,
EMB.omega = 0, B.Moment = 20, tol.pcg = 1e-4, iter.pcg = 100, bin = 100,
lod.cutoff = 3.0, seed.num = 10000, dir_out)
}

