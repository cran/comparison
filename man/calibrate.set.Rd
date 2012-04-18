\name{calibrate.set}
\alias{calibrate.set}

\title{Internal function - calibrate the set}

\description{Produces an calibrated set of idealised values}

\usage{calibrate.set(LR.ss, LR.ds, method = "raw")}

\arguments{
  \item{LR.ss}{an array of likelihood ratios for the comparisons of items known to be from the same items}
  \item{LR.ds}{an array of likelihood ratios for the comparisons of items known to be from different items}
  \item{method}{either "raw" or "laplace" - default "raw"}
}


\details{An internal function not really to be used directly.}

\value{
\item{LR.cal.ss}{calibrated lrs for the comparison for same set}
\item{LR.cal.ds}{calibrated lrs for the comparison for different set}
}

\references{Ramos, D. & Gonzalez-Rodriguez, J. (2008) Cross-entropy analysis of the information in forensic speaker recognition; IEEE Odyssey.}

\author{David Lucy \email{d.lucy@lancaster.ac.uk} - \url{http://www.maths.lancs.ac.uk/~lucy}}

\note{Do not use this function directly.}

\seealso{
\code{\link[isotone]{gpava}}\cr
\code{\linkS4class{ece}}\cr
\code{\link{calibrate.set}}\cr
\code{\link{calc.ece}}
}

\examples{
ls()
}

\keyword{models}


