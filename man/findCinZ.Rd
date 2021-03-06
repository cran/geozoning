% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilZ.R
\name{findCinZ}
\alias{findCinZ}
\title{find contour for a given quantile value, within an envelope and englobing current zone}
\usage{
findCinZ(iC, Z, K, map, vRef, envel)
}
\arguments{
\item{iC}{zone number}

\item{Z}{zoning geometry (list of SpatialPolygons)}

\item{K}{zoning object (such as returned by calNei function)}

\item{map}{object returned by genMap function}

\item{vRef}{quantile value}

\item{envel}{SpatialPolygons within which the contour must be contained}
}
\value{
a list with components
\describe{
\item{area}{area of SpatialPolygons corresponding to contour}
\item{contourSp}{SpatialPolygons corresponding to contour}
}
}
\description{
find contour for a given quantile value, within an envelope and englobing current zone
}
\details{
withing a zoning, find contour for a given vRef quantile value, contour contains current zone and is included in envel (spatial Polygon)
}
\examples{
\donttest{
data(mapTest)
qProb=c(0.3,0.5)
criti = correctionTree(qProb,mapTest)
best = criti$zk[[2]][[1]]
Z=best$zonePolygone
plotZ(Z)
iC=4
envel=calFrame(iC,Z,best$zoneNModif)
sp::plot(envel,col="blue",add=TRUE)
vRef=quantile(mapTest$krigGrid,0.6)
resp=geozoning:::findCinZ(iC,Z,best,mapTest,vRef,envel)
sp::plot(resp$contourSp,col="red",add=TRUE)
}
}
\keyword{internal}
