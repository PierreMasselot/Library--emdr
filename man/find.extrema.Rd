% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/memd.R
\name{find.extrema}
\alias{find.extrema}
\alias{zero.crossings}
\title{Find local extrema and zero-crossings of a data series}
\usage{
find.extrema(x)

zero.crossings(x)
}
\arguments{
\item{x}{The signal.}
}
\value{
For \code{find.extrema}, a list giving the indices of local minima, 
   local maxima and the total number of extrema.

For \code{zero.crossings}, a vector giving the time indices following 
   each zero crossing.
}
\description{
\code{find.extrema} gives the local extrema of \code{x} and 
   \code{zero.crossings} give the zero-crossings.
}
