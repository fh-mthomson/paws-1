% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kendra_operations.R
\name{kendra_delete_index}
\alias{kendra_delete_index}
\title{Deletes an existing Amazon Kendra index}
\usage{
kendra_delete_index(Id)
}
\arguments{
\item{Id}{[required] The identifier of the index you want to delete.}
}
\description{
Deletes an existing Amazon Kendra index. An exception is not thrown if the index is already being deleted. While the index is being deleted, the \code{Status} field returned by a call to the \code{\link[=kendra_describe_index]{describe_index}} API is set to \code{DELETING}.

See \url{https://www.paws-r-sdk.com/docs/kendra_delete_index/} for full documentation.
}
\keyword{internal}
