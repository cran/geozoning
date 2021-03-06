% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilZ.R
\name{findZCenter}
\alias{findZCenter}
\title{findZCenter}
\usage{
findZCenter(Z, num = NULL)
}
\arguments{
\item{Z}{zoning geometry (list of SpatialPolygons)}

\item{num}{zone number}
}
\value{
a SpatialPoints
}
\description{
findZCenter
}
\details{
find point within zone for pretty labelling
}
\examples{
data(mapTest)
# run zoning with 2 quantiles corresponding to probability values 0.4 and 0.7,
# saving initial zoning and last level zonings
criti=correctionTree(c(0.4,0.7),mapTest,SAVE=TRUE)
Z=criti$zk[[2]][[1]]$zonePolygone
findZCenter(Z)
}
