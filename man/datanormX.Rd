% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/util.R
\name{datanormX}
\alias{datanormX}
\title{normalize data coords with same ratio (for non square field)}
\usage{
datanormX(data, bd)
}
\arguments{
\item{data}{frame with x and y components}

\item{bd}{list with x and y components}
}
\value{
a list with components
\describe{
\item{dataN}{normalized data}
\item{boundaryN}{normalized boundary}
\item{ratio}{normalizing ratio}
\item{xmin}{minimum value of x within boundary}
\item{xmax}{maximum value of x within boundary}
\item{ymin}{minimum value of y within boundary}
\item{ymax}{maximum value of y within boundary}
}
}
\description{
normalize data coords with same ratio (for non square field)
}
\details{
normalize x between 0 and 1, y and boundary with same ratio
}
\examples{
x=runif(100, min=0, max=1)
y=runif(100, min=0.2, max=1.7)
range(x) # not [0,1]
tabData=data.frame(x=x,y=y)
bd=list(x=c(0,0,1,1,0), y=c(0.2,1.7,1.7,0.2,0.2))
res=datanormX(tabData,bd)
apply(res$dataN,2,range)# x range is now [0,1], not y range
res$ratio # normalization ratio
}
