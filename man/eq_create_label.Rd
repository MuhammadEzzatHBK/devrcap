% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eq_create_label.R
\name{eq_create_label}
\alias{eq_create_label}
\title{Creates a fine labels for earthquakes map}
\usage{
eq_create_label(.df)
}
\arguments{
\item{.df}{(data.frame) earthquake data (NOAA)}
}
\value{
(chr) the labels
}
\description{
\code{eq_create_label} creates labels for the eqrthquakes map
(\code{\link[leaflet]{leaflet}}) created by \code{\link{eq_map}}.
}
\details{
It shows (and needs) information about:
\itemize{
\item cleaned location (if present) as provided by
\code{\link{eq_location_clean}}.
\item magnitude
\item total number of death
}
}
\examples{
\dontrun{
    library(dplyr)
    library(lubridate)
    library(devrcap)

    library(lubridate)
        data(noaa)

    noaa \%>\%
        eq_clean_data() \%>\%
        eq_create_label()

    noaa \%>\%
        eq_clean_data() \%>\%
        filter(
            country \%in\% c("ITALY", "GREECE", "PORTUGAL"),
            year(date) >= 1900
        ) \%>\%
        dplyr::mutate(popup_text = eq_create_label(.)) \%>\%
        eq_map("popup_text")


    noaa \%>\%
        eq_clean_data \%>\%
        dplyr::filter(country == "MEXICO", year(date) >= 2000) \%>\%
        dplyr::mutate(popup_text = eq_create_label(.)) \%>\%
        eq_map("popup_text")
}
}
