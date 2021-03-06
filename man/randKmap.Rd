% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/randKmap.R
\name{randKmap}
\alias{randKmap}
\title{randKmap:  Generate data for zoning or prepare real data}
\usage{
randKmap(DataObj, seed = NULL, nPoints = 450, nPointsK = 2000,
  nSimuCond = 0, typeMod = "Exp", Vpsill = 5, Vrange = 0.2, Vmean = 8,
  Vnugget = 0.2, boundary = list(x = c(0, 0, 1, 1, 0), y = c(0, 1, 1, 0,
  0)), manualBoundary = FALSE, krig = 2, disp = 0, FULL = FALSE)
}
\arguments{
\item{DataObj}{=NULL: simulated data with seed or = a data frame with real data}

\item{seed}{numeric, seed used to randomly generate data points}

\item{nPoints}{numeric, number of raw data points, default 450}

\item{nPointsK}{numeric, number of kriged data points, default 2000}

\item{nSimuCond}{number of conditional simulations, reserved for future implementation.}

\item{typeMod}{type of variogram model (see vgm) "Gau", "Sph", "Exp"}

\item{Vpsill}{numeric, default 5}

\item{Vrange}{numeric, default 0.2}

\item{Vmean}{numeric, default 8}

\item{Vnugget}{numeric, default 0}

\item{boundary}{list contains x and y}

\item{manualBoundary}{logical, default FALSE}

\item{krig}{numeric}

\item{disp}{numeric}

\item{FULL}{logical, if TRUE the returned list is complete}
}
\value{
a list
\describe{
\item{rawData}{simulated or real raw data within the boundary}
\item{step}{grid step}
\item{krigData}{kriged data as a SpatialPointsDataFrame}
\item{krigGrid}{kriged data in form of a grid-useful for image plots.}
\item{krigN}{list of neighbours of each kriged data point}
\item{krigSurfVoronoi}{list of areas of Voronoi polygons in the tesselation of kriged data}
\item{modelGen}{random fields model}
\item{VGMmodel}{vgm model}
\item{boundary}{(x,y) list of boundary points}
\item{ratio}{ratio used to normalize x data}
}
}
\description{
randKmap:  Generate data for zoning or prepare real data
}
\details{
Generates a map structure from simulated data or real data. Kriged data are normalized so that x-coordinates are between 0 and 1. y-coordinates are normalized with the same ratio used for x-coordinates. Kriging is either done with inverse distance interpolation, or with a variogram model.  It creates a structure that contains the data and parameters necessary to perform a zoning. The structure is identical wether the data are simulated or not.
}
\examples{
map = randKmap(NULL,nPointsK=200,Vmean=15,krig=2)
mean(map$krigGrid) # mean of generated kriged data
plotMap(map)
}
