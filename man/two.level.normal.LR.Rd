\name{two.level.normal.LR}
\alias{two.level.normal.LR}

\title{Likelihood ratio calculation - normal}


\description{Takes a \code{\linkS4class{compitem}} object which represents some control item, and a \code{\linkS4class{compitem}} object which represents a recovered item, then uses information from a \code{\linkS4class{compcovar}} object, which represents the information from the population, to calculate a likelihood ratio as a measure of the evidence given by the observations for the same/different source propositions.}


\usage{two.level.normal.LR(control, recovered, background)}
\arguments{
\item{control}{a \code{\linkS4class{compitem}} object with the control item information}
\item{recovered}{a \code{\linkS4class{compitem}} object with the recovered item information}
\item{background}{a \code{\linkS4class{compcovar}} object with the populational information}
}


\details{Does the likelihood ratio calculations for a two-level model assuming that the between item distribution is uni/multivariate normal.}


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
control <- two.level.comparison.items(dat[1:6,], c(7,8,9))

# calculate a compitem object representing the recovered item
# known to be from the same item (item 1)
recovered.1 <- two.level.comparison.items(dat[7:12,], c(7,8,9))

# calculate a compitem object representing the recovered item
# known to be from a different item (item 2)
recovered.2 <- two.level.comparison.items(dat[19:24,], c(7,8,9))


# calculate the likelihood ratio for a known
# same source comparison - should be 51.16539
lr.1 <- two.level.normal.LR(control, recovered.1, Z)

# calculate the likelihood ratio for a known
# different source comparison - should be 0.02901532
lr.2 <- two.level.normal.LR(control, recovered.2, Z)
}

\keyword{multivariate}

