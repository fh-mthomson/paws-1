% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_put_public_access_block}
\alias{s3_put_public_access_block}
\title{Creates or modifies the PublicAccessBlock configuration for an Amazon S3
bucket}
\usage{
s3_put_public_access_block(
  Bucket,
  ContentMD5 = NULL,
  ChecksumAlgorithm = NULL,
  PublicAccessBlockConfiguration,
  ExpectedBucketOwner = NULL
)
}
\arguments{
\item{Bucket}{[required] The name of the Amazon S3 bucket whose \code{PublicAccessBlock} configuration
you want to set.}

\item{ContentMD5}{The MD5 hash of the
\code{\link[=s3_put_public_access_block]{put_public_access_block}} request body.

For requests made using the Amazon Web Services Command Line Interface
(CLI) or Amazon Web Services SDKs, this field is calculated
automatically.}

\item{ChecksumAlgorithm}{Indicates the algorithm used to create the checksum for the object when
using the SDK. This header will not provide any additional functionality
if not using the SDK. When sending this header, there must be a
corresponding \code{x-amz-checksum} or \code{x-amz-trailer} header sent.
Otherwise, Amazon S3 fails the request with the HTTP status code
\verb{400 Bad Request}. For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html}{Checking object integrity}
in the \emph{Amazon S3 User Guide}.

If you provide an individual checksum, Amazon S3 ignores any provided
\code{ChecksumAlgorithm} parameter.}

\item{PublicAccessBlockConfiguration}{[required] The \code{PublicAccessBlock} configuration that you want to apply to this
Amazon S3 bucket. You can enable the configuration options in any
combination. For more information about when Amazon S3 considers a
bucket or object public, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html#access-control-block-public-access-policy-status}{The Meaning of "Public"}
in the \emph{Amazon S3 User Guide}.}

\item{ExpectedBucketOwner}{The account ID of the expected bucket owner. If the bucket is owned by a
different account, the request fails with the HTTP status code
\verb{403 Forbidden} (access denied).}
}
\description{
Creates or modifies the \code{PublicAccessBlock} configuration for an Amazon S3 bucket. To use this operation, you must have the \code{s3:PutBucketPublicAccessBlock} permission. For more information about Amazon S3 permissions, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html}{Specifying Permissions in a Policy}.

See \url{https://www.paws-r-sdk.com/docs/s3_put_public_access_block/} for full documentation.
}
\keyword{internal}
