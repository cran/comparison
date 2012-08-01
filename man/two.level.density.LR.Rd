\name{two.level.density.LR}
\alias{two.level.density.LR}

\title{Likelihood ratio calculation}


\description{Takes a \code{\linkS4class{compitem}} object which represents some control item, and a \code{\linkS4class{compitem}} object which represents a recovered item, then uses information from a \code{\linkS4class{compcovar}} object, which represents the information from the population, to calculate a likelihood ratio as a measure of the evidence given by the observations for the same/different source propositions.}


\usage{two.level.density.LR(control, recovered, background)}
\arguments{
\item{control}{a \code{\linkS4class{compitem}} object with the control item information}
\item{recovered}{a \code{\linkS4class{compitem}} object with the recovered item information}
\item{background}{a \code{\linkS4class{compcovar}} object with the populational information}
}


\details{Does the likelihood ratio calculations for a two-level model.}


\value{Returns an estimate of the likelihood ratio}


\references{Aitken, C.G.G. & Lucy, D. (2004) Evaluation of trace evidence in the form of multivariate data. \emph{Applied Statistics}: \bold{53}(1); 109-122.}


\author{David Lucy \email{d.lucy@lancaster.ac.uk} - \url{http://www.maths.lancs.ac.uk/~lucy}}


\note{Do not even think about using this function without the proper \code{\linkS4class{compcovar}} and \code{\linkS4class{compitem}} objects - it will not work.}


\seealso{
\code{\linkS4class{compcovar}}\cr 
\code{\linkS4class{compitem}}\cr
\code{\link{two.level.comparison.items}}\cr
\code{\link{two.level.components}}\cr
\code{\link{two.level.density.LR}}
}


\examples{
# load this library
library(comparison)

# load Greg Zadora's glass data
data(glass)

# make it into a data frame
dat <- as.data.frame(glass)

# calculate a compcovar object based upon dat
# using K, Ca and Fe - warning - could take time
# on slower machines
Z <- two.level.components(dat, c(7,8,9), 1)

# calculate a compitem object representing the control item
control <- two.level.comparison.items(dat[37:42,], c(7,8,9))

# calculate a compitem object representing the recovered item
# known to be from the same item (item 4)
recovered.1 <- two.level.comparison.items(dat[43:48,], c(7,8,9))

# calculate a compitem object representing the recovered item
# known to be from a different item (item 6)
recovered.2 <- two.level.comparison.items(dat[67:72,], c(7,8,9))


# calculate the likelihood ratio for a known
# same source comparison - should be 20.39552
lr.1 <- two.level.density.LR(control, recovered.1, Z)

# calculate the likelihood ratio for a known
# different source comparison - should be 0.8941555
lr.2 <- two.level.density.LR(control, recovered.2, Z)
}

\keyword{multivariate}

