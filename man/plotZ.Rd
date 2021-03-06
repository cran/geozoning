% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/visudispZ.R
\name{plotZ}
\alias{plotZ}
\title{plotZ}
\usage{
plotZ(Z, map = NULL, id = FALSE, noXY = FALSE,
  palCol = colorRampPalette(topo.colors(20)))
}
\arguments{
\item{Z}{zoning geometry (list of SpatialPolygons)}

\item{map}{map object returned by genMap function}

\item{id}{logical value, if TRUE display zone ids, if FALSE display zone numbers}

\item{noXY}{logical value, if TRUE do not display x and y axes}

\item{palCol}{argument of colorRampPalette}
}
\value{
an empty value
}
\description{
plotZ
}
\details{
wrapper function for dispZ
}
\examples{
data(mapTest)
data(resZTest)
K=resZTest
Z=K$zonePolygone
plotZ(Z,mapTest)
}
