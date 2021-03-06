% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/HigherOrderRiskPreferences.R
\name{compute_function}
\alias{compute_function}
\title{Computes a continuous and smooth utility function from the given utility points}
\usage{
compute_function(
  x,
  y,
  ids = NULL,
  mode = 1,
  penalty_order = 4,
  lambda_max = 10000,
  current_lambda = 1,
  ndx = 20,
  deg = 6,
  verbose = 0
)
}
\arguments{
\item{x}{a matrix or dataframe containing the certainty equivalents (x-values of utility points) for a given participant in each use case.}

\item{y}{can be a vector or a matrix representing the corresponding utility values (y-values of utility points).}

\item{ids}{a list containing the IDs of the participants. If not given, a list with IDs from 1 to n_observations will be created.}

\item{mode}{an integer between 0, 1, 2 representing the three possible modes: multiple imputation, optimal classification or 'weak' classification. Default is optimal classification (1).}

\item{penalty_order}{highest dimension (i.e., derivative) to penalize. Must be lower than deg.}

\item{lambda_max}{maximum lambda used for computing the optimal lambda. It is used only in multiple imputation (mode = 0) and optimal (mode = 1). The default value is 10000.}

\item{current_lambda}{lambda considered in the current iteration. Only used in multiple imputation (mode = 0) to create the combinations and as actual lambda value in 'weak' classification mode (mode = 2). The default value is 1.}

\item{ndx}{number of intervals to partition the distance between the lowest and highest x-values of the utility points.}

\item{deg}{degree of the B-spline basis. Determines the degree of the function to be estimated. If deg = 2, the estimated utility function will consist of quadratic functions.}

\item{verbose}{shows some information while the program is running.}
}
\value{
A smooth and continuous utility function.
}
\description{
Computes a continuous and smooth utility function from the given utility points
}
\examples{
\donttest{
x <- matrix(c(24.60938,34.76074,78.75,81.86035,128.5156, 
              7.109375,80.4248,113.75,115.083,135.0781, 
              3.828125,7.211914,8.75,124.1064,131.7969, 
              1.640625,2.084961,8.75,36.94824,98.98438), nrow = 4, ncol = 5, byrow = TRUE)
y <- c(0.25, 0.375, 0.5, 0.625, 0.75)
compute_function(x, y, verbose = 1)
}
}
