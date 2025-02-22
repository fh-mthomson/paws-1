% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_delete_ipam_pool}
\alias{ec2_delete_ipam_pool}
\title{Delete an IPAM pool}
\usage{
ec2_delete_ipam_pool(DryRun = NULL, IpamPoolId)
}
\arguments{
\item{DryRun}{A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
\code{DryRunOperation}. Otherwise, it is \code{UnauthorizedOperation}.}

\item{IpamPoolId}{[required] The ID of the pool to delete.}
}
\description{
Delete an IPAM pool.

See \url{https://www.paws-r-sdk.com/docs/ec2_delete_ipam_pool/} for full documentation.
}
\keyword{internal}
