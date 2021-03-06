% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilZ.R
\name{getClosestZone}
\alias{getClosestZone}
\title{getClosestZone}
\usage{
getClosestZone(iZ, Z, zoneN)
}
\arguments{
\item{iZ}{current zone number}

\item{Z}{current zone}

\item{zoneN}{zone neighborhood Logical matrix}
}
\value{
the closest zone index
}
\description{
getClosestZone
}
\details{
get closest non neighbor zone (i.e. excluding neighbor zones and englobing zone)
}
\examples{
\donttest{
data(resZTest)
Z=resZTest$zonePolygone
geozoning:::getClosestZone(4,Z,resZTest$zoneNModif)
}
}
\keyword{internal}
