% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/backup_operations.R
\name{backup_list_backup_jobs}
\alias{backup_list_backup_jobs}
\title{Returns a list of existing backup jobs for an authenticated account for
the last 30 days}
\usage{
backup_list_backup_jobs(
  NextToken = NULL,
  MaxResults = NULL,
  ByResourceArn = NULL,
  ByState = NULL,
  ByBackupVaultName = NULL,
  ByCreatedBefore = NULL,
  ByCreatedAfter = NULL,
  ByResourceType = NULL,
  ByAccountId = NULL,
  ByCompleteAfter = NULL,
  ByCompleteBefore = NULL,
  ByParentJobId = NULL
)
}
\arguments{
\item{NextToken}{The next item following a partial list of returned items. For example,
if a request is made to return \code{maxResults} number of items, \code{NextToken}
allows you to return more items in your list starting at the location
pointed to by the next token.}

\item{MaxResults}{The maximum number of items to be returned.}

\item{ByResourceArn}{Returns only backup jobs that match the specified resource Amazon
Resource Name (ARN).}

\item{ByState}{Returns only backup jobs that are in the specified state.}

\item{ByBackupVaultName}{Returns only backup jobs that will be stored in the specified backup
vault. Backup vaults are identified by names that are unique to the
account used to create them and the Amazon Web Services Region where
they are created. They consist of lowercase letters, numbers, and
hyphens.}

\item{ByCreatedBefore}{Returns only backup jobs that were created before the specified date.}

\item{ByCreatedAfter}{Returns only backup jobs that were created after the specified date.}

\item{ByResourceType}{Returns only backup jobs for the specified resources:
\itemize{
\item \code{Aurora} for Amazon Aurora
\item \code{DocumentDB} for Amazon DocumentDB (with MongoDB compatibility)
\item \code{DynamoDB} for Amazon DynamoDB
\item \code{EBS} for Amazon Elastic Block Store
\item \code{EC2} for Amazon Elastic Compute Cloud
\item \code{EFS} for Amazon Elastic File System
\item \code{FSx} for Amazon FSx
\item \code{Neptune} for Amazon Neptune
\item \code{RDS} for Amazon Relational Database Service
\item \verb{Storage Gateway} for Storage Gateway
\item \code{S3} for Amazon S3
\item \code{VirtualMachine} for virtual machines
}}

\item{ByAccountId}{The account ID to list the jobs from. Returns only backup jobs
associated with the specified account ID.

If used from an Organizations management account, passing \code{*} returns
all jobs across the organization.}

\item{ByCompleteAfter}{Returns only backup jobs completed after a date expressed in Unix format
and Coordinated Universal Time (UTC).}

\item{ByCompleteBefore}{Returns only backup jobs completed before a date expressed in Unix
format and Coordinated Universal Time (UTC).}

\item{ByParentJobId}{This is a filter to list child (nested) jobs based on parent job ID.}
}
\description{
Returns a list of existing backup jobs for an authenticated account for the last 30 days. For a longer period of time, consider using these \href{https://docs.aws.amazon.com/aws-backup/latest/devguide/monitoring.html}{monitoring tools}.

See \url{https://www.paws-r-sdk.com/docs/backup_list_backup_jobs/} for full documentation.
}
\keyword{internal}
