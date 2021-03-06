% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/updateZK.R
\name{updateZK}
\alias{updateZK}
\title{updateZK called by lastPass}
\usage{
updateZK(map, qProb, le, kk, listOfZ, crit, cost, costL, nz, mdist, K1, Z2,
  pErr = 0.9, optiCrit = 2, simplitol = 0.001)
}
\arguments{
\item{map}{object returned by function genMap}

\item{qProb}{probability vector used to generate quantile values}

\item{le}{index of current level in list}

\item{kk}{index of current zoning in level list}

\item{listOfZ}{list of zoning objects}

\item{crit}{list of criteria}

\item{cost}{list of costs}

\item{costL}{list of per label costs}

\item{nz}{list of number of zones}

\item{mdist}{list of distance matrices}

\item{K1}{zoning to be replaced}

\item{Z2}{xxxx}

\item{pErr}{equality tolerance for distance calculations}

\item{optiCrit}{xxxx}

\item{simplitol}{xxxx}
}
\value{
a list of zonings, criteria and costs
}
\description{
updateZK called by lastPass
}
\details{
Given a map object, a list of zonings, a current and a previous zoning, replaces a zoning in the list of zonings
}
\examples{
data(mapTest)
# run zoning with 2 quantiles corresponding to probability values 0.4 and 0.7
criti=correctionTree(c(0.4,0.7),mapTest,LASTPASS=FALSE)
K1=criti$zk[[1]][[1]]#initial zoning
Z1=K1$zonePolygone
printZsurf(Z1) # 8 zones with 2 small zones (7 and 8)
Z2 = geozoning:::remove1FromZ(Z1,7,K1$zoneN)
printZsurf(Z2) #7 zones
newRes=geozoning:::updateZK(mapTest,c(0.4,0.7),1,1,criti$zk[1],criti$criterion[1],
       criti$cost[1],criti$costL[1],criti$nz[1],criti$mdist[1],K1,Z2)
newZ=newRes$listOfZ[[1]][[1]]$zonePolygone
printZsurf(newZ) #7 zones
}
\keyword{internal}
