% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_get_bucket_lifecycle}
\alias{s3_get_bucket_lifecycle}
\title{For an updated version of this API, see GetBucketLifecycleConfiguration}
\usage{
s3_get_bucket_lifecycle(Bucket, ExpectedBucketOwner = NULL)
}
\arguments{
\item{Bucket}{[required] The name of the bucket for which to get the lifecycle information.}

\item{ExpectedBucketOwner}{The account ID of the expected bucket owner. If the bucket is owned by a
different account, the request fails with the HTTP status code
\verb{403 Forbidden} (access denied).}
}
\description{
For an updated version of this API, see \code{\link[=s3_get_bucket_lifecycle_configuration]{get_bucket_lifecycle_configuration}}. If you configured a bucket lifecycle using the \code{filter} element, you should see the updated version of this topic. This topic is provided for backward compatibility.

See \url{https://www.paws-r-sdk.com/docs/s3_get_bucket_lifecycle/} for full documentation.
}
\keyword{internal}
