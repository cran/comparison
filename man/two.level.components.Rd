\name{two.level.components}

\alias{two.level.components}

\title{Creates a \code{compcovar} object}

\description{Takes a large sample from the background population and calculates the within and between covariance matricies, a vector of means, a vector of the counts of replicates for each item from the sample, and other bits needed to make up a \code{\linkS4class{compcovar}} object}

\usage{two.level.components(dat, data.columns, item.column)}

\arguments{
\item{dat}{a matrix, or data.frame, of observations, with cases in rows, and propoerties as columns.}
\item{data.columns}{an array indicating which columns are the properties.}
\item{item.column}{an integer indicating which column gives the item.}
}



\details{Uses ML estimation at the moment - hopefully give some alternative ways of estimating the covariance matricies in the future.}

\value{Returns a \code{\linkS4class{compcovar}} object}

\references{Aitken, C.G.G. & Lucy, D. (2004) Evaluation of trace evidence in the form of multivariate data. \emph{Applied Statistics}: \bold{53}(1); 109-122.}


\author{David Lucy \email{d.lucy@lancaster.ac.uk} - \url{http://www.maths.lancs.ac.uk/~lucy}}


\note{Can be used directly for variance component estimation.}


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
}


\keyword{multivariate}

