% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eks_operations.R
\name{eks_describe_addon_versions}
\alias{eks_describe_addon_versions}
\title{Describes the versions for an add-on}
\usage{
eks_describe_addon_versions(
  kubernetesVersion = NULL,
  maxResults = NULL,
  nextToken = NULL,
  addonName = NULL,
  types = NULL,
  publishers = NULL,
  owners = NULL
)
}
\arguments{
\item{kubernetesVersion}{The Kubernetes versions that you can use the add-on with.}

\item{maxResults}{The maximum number of results to return.}

\item{nextToken}{The \code{nextToken} value returned from a previous paginated
\code{DescribeAddonVersionsRequest} where \code{maxResults} was used and the
results exceeded the value of that parameter. Pagination continues from
the end of the previous results that returned the \code{nextToken} value.

This token should be treated as an opaque identifier that is used only
to retrieve the next items in a list and not for other programmatic
purposes.}

\item{addonName}{The name of the add-on. The name must match one of the names returned by
\href{https://docs.aws.amazon.com/eks/latest/APIReference/API_ListAddons.html}{\code{list_addons}}
.}

\item{types}{The type of the add-on. For valid \code{types}, don't specify a value for
this property.}

\item{publishers}{The publisher of the add-on. For valid \code{publishers}, don't specify a
value for this property.}

\item{owners}{The owner of the add-on. For valid \code{owners}, don't specify a value for
this property.}
}
\description{
Describes the versions for an add-on. Information such as the Kubernetes versions that you can use the add-on with, the \code{owner}, \code{publisher}, and the \code{type} of the add-on are returned.

See \url{https://www.paws-r-sdk.com/docs/eks_describe_addon_versions/} for full documentation.
}
\keyword{internal}
