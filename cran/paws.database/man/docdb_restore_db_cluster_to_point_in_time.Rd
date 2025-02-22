% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/docdb_operations.R
\name{docdb_restore_db_cluster_to_point_in_time}
\alias{docdb_restore_db_cluster_to_point_in_time}
\title{Restores a cluster to an arbitrary point in time}
\usage{
docdb_restore_db_cluster_to_point_in_time(
  DBClusterIdentifier,
  RestoreType = NULL,
  SourceDBClusterIdentifier,
  RestoreToTime = NULL,
  UseLatestRestorableTime = NULL,
  Port = NULL,
  DBSubnetGroupName = NULL,
  VpcSecurityGroupIds = NULL,
  Tags = NULL,
  KmsKeyId = NULL,
  EnableCloudwatchLogsExports = NULL,
  DeletionProtection = NULL
)
}
\arguments{
\item{DBClusterIdentifier}{[required] The name of the new cluster to be created.

Constraints:
\itemize{
\item Must contain from 1 to 63 letters, numbers, or hyphens.
\item The first character must be a letter.
\item Cannot end with a hyphen or contain two consecutive hyphens.
}}

\item{RestoreType}{The type of restore to be performed. You can specify one of the
following values:
\itemize{
\item \code{full-copy} - The new DB cluster is restored as a full copy of the
source DB cluster.
\item \code{copy-on-write} - The new DB cluster is restored as a clone of the
source DB cluster.
}

Constraints: You can't specify \code{copy-on-write} if the engine version of
the source DB cluster is earlier than 1.11.

If you don't specify a \code{RestoreType} value, then the new DB cluster is
restored as a full copy of the source DB cluster.}

\item{SourceDBClusterIdentifier}{[required] The identifier of the source cluster from which to restore.

Constraints:
\itemize{
\item Must match the identifier of an existing \code{DBCluster}.
}}

\item{RestoreToTime}{The date and time to restore the cluster to.

Valid values: A time in Universal Coordinated Time (UTC) format.

Constraints:
\itemize{
\item Must be before the latest restorable time for the instance.
\item Must be specified if the \code{UseLatestRestorableTime} parameter is not
provided.
\item Cannot be specified if the \code{UseLatestRestorableTime} parameter is
\code{true}.
\item Cannot be specified if the \code{RestoreType} parameter is
\code{copy-on-write}.
}

Example: \verb{2015-03-07T23:45:00Z}}

\item{UseLatestRestorableTime}{A value that is set to \code{true} to restore the cluster to the latest
restorable backup time, and \code{false} otherwise.

Default: \code{false}

Constraints: Cannot be specified if the \code{RestoreToTime} parameter is
provided.}

\item{Port}{The port number on which the new cluster accepts connections.

Constraints: Must be a value from \code{1150} to \code{65535}.

Default: The default port for the engine.}

\item{DBSubnetGroupName}{The subnet group name to use for the new cluster.

Constraints: If provided, must match the name of an existing
\code{DBSubnetGroup}.

Example: \code{mySubnetgroup}}

\item{VpcSecurityGroupIds}{A list of VPC security groups that the new cluster belongs to.}

\item{Tags}{The tags to be assigned to the restored cluster.}

\item{KmsKeyId}{The KMS key identifier to use when restoring an encrypted cluster from
an encrypted cluster.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are restoring a cluster with the same Amazon Web
Services account that owns the KMS encryption key used to encrypt the
new cluster, then you can use the KMS key alias instead of the ARN for
the KMS encryption key.

You can restore to a new cluster and encrypt the new cluster with an KMS
key that is different from the KMS key used to encrypt the source
cluster. The new DB cluster is encrypted with the KMS key identified by
the \code{KmsKeyId} parameter.

If you do not specify a value for the \code{KmsKeyId} parameter, then the
following occurs:
\itemize{
\item If the cluster is encrypted, then the restored cluster is encrypted
using the KMS key that was used to encrypt the source cluster.
\item If the cluster is not encrypted, then the restored cluster is not
encrypted.
}

If \code{DBClusterIdentifier} refers to a cluster that is not encrypted, then
the restore request is rejected.}

\item{EnableCloudwatchLogsExports}{A list of log types that must be enabled for exporting to Amazon
CloudWatch Logs.}

\item{DeletionProtection}{Specifies whether this cluster can be deleted. If \code{DeletionProtection}
is enabled, the cluster cannot be deleted unless it is modified and
\code{DeletionProtection} is disabled. \code{DeletionProtection} protects clusters
from being accidentally deleted.}
}
\description{
Restores a cluster to an arbitrary point in time. Users can restore to any point in time before \code{LatestRestorableTime} for up to \code{BackupRetentionPeriod} days. The target cluster is created from the source cluster with the same configuration as the original cluster, except that the new cluster is created with the default security group.

See \url{https://www.paws-r-sdk.com/docs/docdb_restore_db_cluster_to_point_in_time/} for full documentation.
}
\keyword{internal}
