% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilZ.R
\name{printZsurf}
\alias{printZsurf}
\title{printZsurf}
\usage{
printZsurf(Z, minSize = 0.012)
}
\arguments{
\item{Z}{zoning geometry (list of SpatialPolygons)}

\item{minSize}{minimum size threshold}
}
\value{
a vector of small zone indices
}
\description{
printZsurf
}
\details{
print zone surfaces
}
\examples{
data(resZTest)
K=resZTest
Z=K$zonePolygone
printZsurf(Z,0.03)
}
