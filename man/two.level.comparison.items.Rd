\name{two.level.comparison.items}
\alias{two.level.comparison.items}

\title{Creates a \code{compitem} object}

\description{This function creates a \code{\linkS4class{compitem}} object from a dataframe or matrix of observations from an item to be deemed a control, or a recovered, item.
}


\usage{two.level.comparison.items(dat, data.columns)}

\arguments{
\item{dat}{ a matrix or dataframe of observed properties from either the control, or recovered, item}
\item{data.columns}{a vector of integers giving which columns in \code{dat} are the observations of the properties}
}


\details{Takes observations from the control, or recovered, item and makes them into and object which can be passed to either: \code{\link{two.level.density.LR}}, or, \code{\link{two.level.normal.LR}}, or, \code{\link{two.level.lindley.LR}}, for likelihood ratio calculation.}


\value{Returns a \code{\linkS4class{compitem}} object}

\references{Aitken, C.G.G. & Lucy, D. (2004) Evaluation of trace evidence in the form of multivariate data. \emph{Applied Statistics}: \bold{53}(1); 109-122.}


\author{David Lucy \email{d.lucy@lancaster.ac.uk} - \url{http://www.maths.lancs.ac.uk/~lucy}}


\note{This function, and class it generates, exist to make sure that all the necessary bits and pieces are there to put into the likelihood ratio calculation function}


\seealso{
\code{\linkS4class{compcovar}}\cr 
\code{\linkS4class{compitem}}\cr
\code{\link{two.level.comparison.items}}\cr
\code{\link{two.level.components}}\cr
\code{\link{two.level.density.LR}}\cr
\code{\link{two.level.normal.LR}}\cr
\code{\link{two.level.lindley.LR}}
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
}

\keyword{multivariate}



