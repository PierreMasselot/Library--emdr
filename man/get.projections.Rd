% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/memd.R
\name{get.projections}
\alias{get.projections}
\alias{sifting}
\alias{compute.mean.enveloppe}
\title{Internal functions for MEMD}
\usage{
get.projections(ndirections, p)

sifting(x, tt, projmat, stopping, tol, max.iter)

compute.mean.enveloppe(hk, tt = 1:n, projmat = diag(p))
}
\arguments{
\item{ndirections}{Integer giving the number of projections.}

\item{p}{Integer giving the number of variables to decompose.}

\item{x}{A numeric matrix containing the multivariate signal. Each column 
corresponds to a variable.}

\item{tt}{A numeric vector the same size of \code{row(x)} containing time 
indices for the data. Allows for irregularly sampled signals.}

\item{projmat}{A \code{ndirection} x \code{p} giving the
projection vectors to compute the enveloppe.}

\item{stopping}{Character indicating the stopping criterion of the sifting
process. When \code{stopping = "absmean"} (the default) the criterion of 
Rilling et al. (2003) based on the mean enveloppe is used. When 
\code{stopping = "S"}, the stopping criterion of Huang et al. (2003)
based on the number of iteration is used.}

\item{tol}{A numeric vector givving the tolerance for the stopping criterion.
A vector of length 3 when \code{stopping = "absmean"} and a single value
when \code{stopping = "S"}.}

\item{max.iter}{Integer giving the maximum number of iterations for the 
sifting process.}

\item{hk}{Matrix containing the current MIMF prototype.}
}
\value{
\code{get.projections}: a \code{ndirection} x \code{p} matrix giving 
   the projection vectors.

\code{sifting}: a list with the following elements:
 \item{mimf}{A matrix containing the resulting mimf.} 
 \item{count}{The number of iterations for completing the sifting process.}

\code{compute.mean.enveloppe}: a list with elements:
   \item{meanenv}{The mean enveloppe.}
   \item{amp}{The mean amplitude of the signal.}
   \item{nzc}{The number of zero crossings.}
   \item{nex}{The number of local extrema.}
}
\description{
\code{get.projections} creates projection directions through Hammersley 
   sequence.
\code{sifting} performs the sifting process to obtain one MIMF.
\code{compute.mean.enveloppe} computes the mean enveloppe for sifting.
}
