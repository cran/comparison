\name{calc.ece}

\alias{calc.ece}

\title{Empirical cross-entropy calculation}

\description{Calculates the empirical cross-entropy for likelihood ratios from a sequence same and different item comparisons}

\usage{calc.ece(LR.ss, LR.ds, prior=seq(from=0.01, to=0.99, length=99))}

\arguments{
\item{LR.ss}{array of likelihood ratios for same source item comparisons}
\item{LR.ds}{array of likelihood ratios for different source item comparisons}
\item{prior}{array of ordinates for the prior in ascending order, and between 0 and 1. Default is 99 divisions of 0.01 to 0.99}
}

\value{Returns an S4 object of class \code{ece}}

\author{David Lucy \email{d.lucy@lancaster.ac.uk} - \url{http://www.maths.lancs.ac.uk/~lucy}}

\references{Ramos, D. & Gonzalez-Rodriguez, J. (2008) Cross-entropy analysis of the information in forensic speaker recognition; IEEE Odyssey.

Zadora, G. & Ramos, D. (2010) Evaluation of glass samples for forensic purposes - an application of likelihood ratio model and information-theoretical approach. \emph{Chemometrics and Intelligent Laboratory}: \bold{102}; 63-83.
}

\note{The empirical cross-entropy for a set of comparisons for items of known origin can be used as a measure of performance of the comparisons. This function takes the likelihood ratios.}

\seealso{
\code{\link[isotone]{gpava}}\cr
\code{\linkS4class{ece}}\cr
\code{\link{calibrate.set}}\cr
\code{\link{calc.ece}}
}

\section{Acknowledgements}{The function to calculate the values of the likelihood ratio for the \code{calibrated.set} draws heavily upon the \code{opt_loglr.m} function from Niko Brummer's FoCal package for Matlab.}

\examples{
#library(comparison)
LR.same <- c(0.5, 2, 4, 6, 8, 10) 		# the same has 1 LR < 1
LR.different <- c(0.2, 0.4, 0.6, 0.8, 1.1) 	# the different has 1 LR > 1
ece.1 <- calc.ece(LR.same, LR.different)	# simplest invocation
plot(ece.1)					# use plot method
}

\keyword{models}

