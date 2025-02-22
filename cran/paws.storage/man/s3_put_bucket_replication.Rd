% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_put_bucket_replication}
\alias{s3_put_bucket_replication}
\title{Creates a replication configuration or replaces an existing one}
\usage{
s3_put_bucket_replication(
  Bucket,
  ContentMD5 = NULL,
  ChecksumAlgorithm = NULL,
  ReplicationConfiguration,
  Token = NULL,
  ExpectedBucketOwner = NULL
)
}
\arguments{
\item{Bucket}{[required] The name of the bucket}

\item{ContentMD5}{The base64-encoded 128-bit MD5 digest of the data. You must use this
header as a message integrity check to verify that the request body was
not corrupted in transit. For more information, see \href{https://www.ietf.org/rfc/rfc1864.txt}{RFC 1864}.

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

\item{ReplicationConfiguration}{[required]}

\item{Token}{A token to allow Object Lock to be enabled for an existing bucket.}

\item{ExpectedBucketOwner}{The account ID of the expected bucket owner. If the bucket is owned by a
different account, the request fails with the HTTP status code
\verb{403 Forbidden} (access denied).}
}
\description{
Creates a replication configuration or replaces an existing one. For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/replication.html}{Replication} in the \emph{Amazon S3 User Guide}.

See \url{https://www.paws-r-sdk.com/docs/s3_put_bucket_replication/} for full documentation.
}
\keyword{internal}
