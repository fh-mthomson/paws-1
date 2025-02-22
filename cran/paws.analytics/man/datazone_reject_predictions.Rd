% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/datazone_operations.R
\name{datazone_reject_predictions}
\alias{datazone_reject_predictions}
\title{Rejects automatically generated business-friendly metadata for your
Amazon DataZone assets}
\usage{
datazone_reject_predictions(
  clientToken = NULL,
  domainIdentifier,
  identifier,
  rejectChoices = NULL,
  rejectRule = NULL,
  revision = NULL
)
}
\arguments{
\item{clientToken}{A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.}

\item{domainIdentifier}{[required] The identifier of the Amazon DataZone domain.}

\item{identifier}{[required] The identifier of the prediction.}

\item{rejectChoices}{}

\item{rejectRule}{}

\item{revision}{}
}
\description{
Rejects automatically generated business-friendly metadata for your Amazon DataZone assets.

See \url{https://www.paws-r-sdk.com/docs/datazone_reject_predictions/} for full documentation.
}
\keyword{internal}
