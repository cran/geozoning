% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/util.R
\name{normSize}
\alias{normSize}
\title{normSize}
\usage{
normSize(boundaryN, minSize, minSizeNG)
}
\arguments{
\item{boundaryN}{normalized map boundary}

\item{minSize}{minimum size threshold}

\item{minSizeNG}{no grow size threshold}
}
\value{
a list with components
\describe{
\item{minSize}{normalized minimum size threshold}
\item{minSizeNG}{normalized no grow size threshold}
}
}
\description{
normSize
}
\details{
normalize thresholds for small zone detection and no grow zone, considering mapo boundary
}
\examples{
data(mapTest)
resT=normSize(mapTest$boundary,0.012,0.001)#normalize thresholds relatively to map boundary area
}
