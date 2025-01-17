% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/optimal_k.R
\name{optimal_k}
\alias{optimal_k}
\title{Choose the appropriate k cluster}
\usage{
optimal_k(data, lower = 2, upper = 5, criterion = "BIC", iter = 1000)
}
\arguments{
\item{data}{The data with numeric elements}

\item{lower}{the lower bound k(default is 2)}

\item{upper}{the upper bound k(default is 5)}

\item{criterion}{two choice:"AIC","BIC"(default is "BIC")}
}
\value{
A list of the result:
\item{k}{The optimal k via chosed criterion}
\item{criterion.value}{The criterion value corresponds to the optimal k}
}
\description{
Choose k via AIC or BIC
}
\details{
The em_GMM within the upper and lower bounds of the given integer k are performed.
If there is an inability to converge or if the sigma is too low,
the corresponding message will be displayed on the way. see em_GMM.
}
\examples{
  data(faithful)
  optimal_k(faithful,lower=2,upper=6,criterion="AIC")
}
