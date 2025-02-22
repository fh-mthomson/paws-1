% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudwatchlogs_operations.R
\name{cloudwatchlogs_describe_log_groups}
\alias{cloudwatchlogs_describe_log_groups}
\title{Lists the specified log groups}
\usage{
cloudwatchlogs_describe_log_groups(
  accountIdentifiers = NULL,
  logGroupNamePrefix = NULL,
  logGroupNamePattern = NULL,
  nextToken = NULL,
  limit = NULL,
  includeLinkedAccounts = NULL
)
}
\arguments{
\item{accountIdentifiers}{When \code{includeLinkedAccounts} is set to \code{True}, use this parameter to
specify the list of accounts to search. You can specify as many as 20
account IDs in the array.}

\item{logGroupNamePrefix}{The prefix to match.

\code{logGroupNamePrefix} and \code{logGroupNamePattern} are mutually exclusive.
Only one of these parameters can be passed.}

\item{logGroupNamePattern}{If you specify a string for this parameter, the operation returns only
log groups that have names that match the string based on a
case-sensitive substring search. For example, if you specify \code{Foo}, log
groups named \code{FooBar}, \code{aws/Foo}, and \code{GroupFoo} would match, but \code{foo},
\code{F/o/o} and \code{Froo} would not match.

If you specify \code{logGroupNamePattern} in your request, then only \code{arn},
\code{creationTime}, and \code{logGroupName} are included in the response.

\code{logGroupNamePattern} and \code{logGroupNamePrefix} are mutually exclusive.
Only one of these parameters can be passed.}

\item{nextToken}{The token for the next set of items to return. (You received this token
from a previous call.)}

\item{limit}{The maximum number of items returned. If you don't specify a value, the
default is up to 50 items.}

\item{includeLinkedAccounts}{If you are using a monitoring account, set this to \code{True} to have the
operation return log groups in the accounts listed in
\code{accountIdentifiers}.

If this parameter is set to \code{true} and \code{accountIdentifiers} contains a
null value, the operation returns all log groups in the monitoring
account and all log groups in all source accounts that are linked to the
monitoring account.}
}
\description{
Lists the specified log groups. You can list all your log groups or filter the results by prefix. The results are ASCII-sorted by log group name.

See \url{https://www.paws-r-sdk.com/docs/cloudwatchlogs_describe_log_groups/} for full documentation.
}
\keyword{internal}
