% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/emdr2.R
\name{predict.emdr2}
\alias{predict.emdr2}
\title{Predictions from emdr2}
\usage{
\method{predict}{emdr2}(object, newmimfs = NULL, newcovariates = NULL,
  method = "predict", ...)
}
\arguments{
\item{object}{An \code{emdr2} object.}

\item{newmimfs}{Array of new MIMFs values for prediction. Number of IMFs and 
variables must match those of the \code{mimf} argument given in the
\code{\link{emdr2}} function. If NULL, the data used to fit the model
are used.}

\item{newcovariates}{Data.frame of new covariates value for prediction.}

\item{method}{The name of a prediction method linked to the regression
function used for \code{emdr2}.}

\item{...}{Additional arguments for the predict method.}
}
\value{
A vector of predicted values.
}
\description{
Method predict for \code{emdr2} objects.
}
\details{
If new data are given for prediction, both \code{newmimfs} and 
   \code{newcovariates} must be given (provided covariates have been used in 
   the model).
}
\examples{
   library(dlnm)

   dat <- chicagoNMMAPS[,c("death", "temp", "rhum")]

   mimfs <- memd(dat)
   cmimfs <- combine.mimf(mimfs, list(12:13, 14:17, 18:19), 
     new.names = c("C12", "C13", "r"))

   lm.R2 <- emdr2(death ~ temp + rhum, mimf = cmimfs)
   deathHat <- predict(lm.R2)

}
