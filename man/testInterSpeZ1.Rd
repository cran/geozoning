% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilZ.R
\name{testInterSpeZ1}
\alias{testInterSpeZ1}
\title{testInterSpeZ1}
\usage{
testInterSpeZ1(Z, iZ)
}
\arguments{
\item{Z}{zoning geometry (list of SpatialPolygons)}

\item{iZ}{zone number}
}
\value{
a Logical value, TRUE if there is an intersection, FALSE if not.
}
\description{
testInterSpeZ1
}
\details{
checks, within a zoning, if a given zone intersects with any other zone  not within it
}
\examples{
\donttest{
data(mapTest)
qProb=c(0.2,0.5)
ZK = initialZoning(qProb, mapTest)
K=ZK$resZ
Z=K$zonePolygone
plotZ(Z)
Z58=rgeos::gConvexHull(rgeos::gUnion(Z[[8]],Z[[5]]))
Z[[length(Z)+1]]=Z58 # add new zone to zoning
plotZ(Z)
geozoning:::testInterSpe(Z,6,length(Z))
}
}
\keyword{internal}
