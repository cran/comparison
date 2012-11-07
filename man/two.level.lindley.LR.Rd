\name{two.level.lindley.LR}
\alias{two.level.lindley.LR}

\title{Likelihood ratio calculation - normal - Lindley's approach}


\description{Takes a \code{\linkS4class{compitem}} object which represents some control item, and a \code{\linkS4class{compitem}} object which represents a recovered item, then uses information from a \code{\linkS4class{compcovar}} object, which represents the information from the population, to calculate a likelihood ratio as a measure of the evidence given by the observations for the same/different source propositions.}


\usage{two.level.lindley.LR(control, recovered, background)}
\arguments{
\item{control}{a \code{\linkS4class{compitem}} object with the control item information}
\item{recovered}{a \code{\linkS4class{compitem}} object with the recovered item information}
\item{background}{a \code{\linkS4class{compcovar}} object with the populational information}
}


\details{Does the likelihood ratio calculations for a two-level model assuming that the between item distribution is univariate normal. This function is taken from the approach devised by Denis Lindley in his 1977 paper (details below) and represents the progenitor of all the functions in this package.}


\value{Returns an estimate of the likelihood ratio}


\references{Lindley, D. (1977) A problem in forensic Science. \emph{Biometrika}: \bold{64}; 207-213.}


\author{David Lucy \email{d.lucy@lancaster.ac.uk} - \url{http://www.maths.lancs.ac.uk/~lucy}}


\note{Do not even think about using this function without the proper \code{\linkS4class{compcovar}} and \code{\linkS4class{compitem}} objects - it will not work.}


\seealso{
\code{\linkS4class{compcovar}}\cr 
\code{\linkS4class{compitem}}\cr
\code{\link{two.level.comparison.items}}\cr
\code{\link{two.level.components}}\cr
\code{\link{two.level.density.LR}}\cr
\code{\link{two.level.normal.LR}}
}


\examples{
# load this library
library(comparison)

# load Greg Zadora's glass data
data(glass)

# make it into a data frame
dat <- as.data.frame(glass)

# calculate a compcovar object based upon dat
# using K
Z <- two.level.components(dat, 7, 1)

# calculate a compitem object representing the control item
control <- two.level.comparison.items(dat[1:6,], 7)

# calculate a compitem object representing the recovered item
# known to be from the same item (item 1)
recovered.1 <- two.level.comparison.items(dat[7:12,], 7)

# calculate a compitem object representing the recovered item
# known to be from a different item (item 2)
recovered.2 <- two.level.comparison.items(dat[19:24,], 7)


# calculate the likelihood ratio for a known
# same source comparison - should be 6.323941
lr.1 <- two.level.lindley.LR(control, recovered.1, Z)

# calculate the likelihood ratio for a known
# different source comparison - should be 0.004422907
lr.2 <- two.level.lindley.LR(control, recovered.2, Z)
}

\keyword{univariate}

