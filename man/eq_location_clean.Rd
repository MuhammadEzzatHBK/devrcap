% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eq_location_clean.R
\name{eq_location_clean}
\alias{eq_location_clean}
\title{Clean NOAA data frame}
\usage{
eq_location_clean(x)
}
\arguments{
\item{x}{(chr) a vector of Earthquake location names}
}
\value{
(chr) a cleaned version of the names
}
\description{
cleans a character vector formatted like the LOCATION_NAME column of
\code{\link{noaa}} by stripping out the country name (including the
colon) and converts names to title case (as opposed to all caps)
}
\examples{
data(noaa)
eq_location_clean(noaa$LOCATION_NAME)
}
