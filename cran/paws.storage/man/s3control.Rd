% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3control_service.R
\name{s3control}
\alias{s3control}
\title{AWS S3 Control}
\usage{
s3control(
  config = list(),
  credentials = list(),
  endpoint = NULL,
  region = NULL
)
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.
\itemize{
\item{\strong{credentials}:} {\itemize{
\item{\strong{creds}:} {\itemize{
\item{\strong{access_key_id}:} {AWS access key ID}
\item{\strong{secret_access_key}:} {AWS secret access key}
\item{\strong{session_token}:} {AWS temporary session token}
}}
\item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
\item{\strong{anonymous}:} {Set anonymous credentials.}
}}
\item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
\item{\strong{region}:} {The AWS Region used in instantiating the client.}
\item{\strong{close_connection}:} {Immediately close all HTTP connections.}
\item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
\item{\strong{s3_force_path_style}:} {Set this to \code{true} to force the request to use path-style addressing, i.e. \verb{http://s3.amazonaws.com/BUCKET/KEY}.}
\item{\strong{sts_regional_endpoint}:} {Set sts regional endpoint resolver to regional or legacy \url{https://docs.aws.amazon.com/sdkref/latest/guide/feature-sts-regionalized-endpoints.html}}
}}

\item{credentials}{Optional credentials shorthand for the config parameter
\itemize{
\item{\strong{creds}:} {\itemize{
\item{\strong{access_key_id}:} {AWS access key ID}
\item{\strong{secret_access_key}:} {AWS secret access key}
\item{\strong{session_token}:} {AWS temporary session token}
}}
\item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
\item{\strong{anonymous}:} {Set anonymous credentials.}
}}

\item{endpoint}{Optional shorthand for complete URL to use for the constructed client.}

\item{region}{Optional shorthand for AWS Region used in instantiating the client.}
}
\value{
A client for the service. You can call the service's operations using
syntax like \code{svc$operation(...)}, where \code{svc} is the name you've assigned
to the client. The available operations are listed in the
Operations section.
}
\description{
Amazon Web Services S3 Control provides access to Amazon S3 control
plane actions.
}
\section{Service syntax}{


\if{html}{\out{<div class="sourceCode">}}\preformatted{svc <- s3control(
  config = list(
    credentials = list(
      creds = list(
        access_key_id = "string",
        secret_access_key = "string",
        session_token = "string"
      ),
      profile = "string",
      anonymous = "logical"
    ),
    endpoint = "string",
    region = "string",
    close_connection = "logical",
    timeout = "numeric",
    s3_force_path_style = "logical",
    sts_regional_endpoint = "string"
  ),
  credentials = list(
    creds = list(
      access_key_id = "string",
      secret_access_key = "string",
      session_token = "string"
    ),
    profile = "string",
    anonymous = "logical"
  ),
  endpoint = "string",
  region = "string"
)
}\if{html}{\out{</div>}}
}

\section{Operations}{

\tabular{ll}{
\link[=s3control_create_access_point]{create_access_point} \tab Creates an access point and associates it with the specified bucket\cr
\link[=s3control_create_access_point_for_object_lambda]{create_access_point_for_object_lambda} \tab Creates an Object Lambda Access Point\cr
\link[=s3control_create_bucket]{create_bucket} \tab This action creates an Amazon S3 on Outposts bucket\cr
\link[=s3control_create_job]{create_job} \tab You can use S3 Batch Operations to perform large-scale batch actions on Amazon S3 objects\cr
\link[=s3control_create_multi_region_access_point]{create_multi_region_access_point} \tab Creates a Multi-Region Access Point and associates it with the specified buckets\cr
\link[=s3control_delete_access_point]{delete_access_point} \tab Deletes the specified access point\cr
\link[=s3control_delete_access_point_for_object_lambda]{delete_access_point_for_object_lambda} \tab Deletes the specified Object Lambda Access Point\cr
\link[=s3control_delete_access_point_policy]{delete_access_point_policy} \tab Deletes the access point policy for the specified access point\cr
\link[=s3control_delete_access_point_policy_for_object_lambda]{delete_access_point_policy_for_object_lambda} \tab Removes the resource policy for an Object Lambda Access Point\cr
\link[=s3control_delete_bucket]{delete_bucket} \tab This action deletes an Amazon S3 on Outposts bucket\cr
\link[=s3control_delete_bucket_lifecycle_configuration]{delete_bucket_lifecycle_configuration} \tab This action deletes an Amazon S3 on Outposts bucket's lifecycle configuration\cr
\link[=s3control_delete_bucket_policy]{delete_bucket_policy} \tab This action deletes an Amazon S3 on Outposts bucket policy\cr
\link[=s3control_delete_bucket_replication]{delete_bucket_replication} \tab This operation deletes an Amazon S3 on Outposts bucket's replication configuration\cr
\link[=s3control_delete_bucket_tagging]{delete_bucket_tagging} \tab This action deletes an Amazon S3 on Outposts bucket's tags\cr
\link[=s3control_delete_job_tagging]{delete_job_tagging} \tab Removes the entire tag set from the specified S3 Batch Operations job\cr
\link[=s3control_delete_multi_region_access_point]{delete_multi_region_access_point} \tab Deletes a Multi-Region Access Point\cr
\link[=s3control_delete_public_access_block]{delete_public_access_block} \tab Removes the PublicAccessBlock configuration for an Amazon Web Services account\cr
\link[=s3control_delete_storage_lens_configuration]{delete_storage_lens_configuration} \tab Deletes the Amazon S3 Storage Lens configuration\cr
\link[=s3control_delete_storage_lens_configuration_tagging]{delete_storage_lens_configuration_tagging} \tab Deletes the Amazon S3 Storage Lens configuration tags\cr
\link[=s3control_describe_job]{describe_job} \tab Retrieves the configuration parameters and status for a Batch Operations job\cr
\link[=s3control_describe_multi_region_access_point_operation]{describe_multi_region_access_point_operation} \tab Retrieves the status of an asynchronous request to manage a Multi-Region Access Point\cr
\link[=s3control_get_access_point]{get_access_point} \tab Returns configuration information about the specified access point\cr
\link[=s3control_get_access_point_configuration_for_object_lambda]{get_access_point_configuration_for_object_lambda} \tab Returns configuration for an Object Lambda Access Point\cr
\link[=s3control_get_access_point_for_object_lambda]{get_access_point_for_object_lambda} \tab Returns configuration information about the specified Object Lambda Access Point\cr
\link[=s3control_get_access_point_policy]{get_access_point_policy} \tab Returns the access point policy associated with the specified access point\cr
\link[=s3control_get_access_point_policy_for_object_lambda]{get_access_point_policy_for_object_lambda} \tab Returns the resource policy for an Object Lambda Access Point\cr
\link[=s3control_get_access_point_policy_status]{get_access_point_policy_status} \tab Indicates whether the specified access point currently has a policy that allows public access\cr
\link[=s3control_get_access_point_policy_status_for_object_lambda]{get_access_point_policy_status_for_object_lambda} \tab Returns the status of the resource policy associated with an Object Lambda Access Point\cr
\link[=s3control_get_bucket]{get_bucket} \tab Gets an Amazon S3 on Outposts bucket\cr
\link[=s3control_get_bucket_lifecycle_configuration]{get_bucket_lifecycle_configuration} \tab This action gets an Amazon S3 on Outposts bucket's lifecycle configuration\cr
\link[=s3control_get_bucket_policy]{get_bucket_policy} \tab This action gets a bucket policy for an Amazon S3 on Outposts bucket\cr
\link[=s3control_get_bucket_replication]{get_bucket_replication} \tab This operation gets an Amazon S3 on Outposts bucket's replication configuration\cr
\link[=s3control_get_bucket_tagging]{get_bucket_tagging} \tab This action gets an Amazon S3 on Outposts bucket's tags\cr
\link[=s3control_get_bucket_versioning]{get_bucket_versioning} \tab This operation returns the versioning state for S3 on Outposts buckets only\cr
\link[=s3control_get_job_tagging]{get_job_tagging} \tab Returns the tags on an S3 Batch Operations job\cr
\link[=s3control_get_multi_region_access_point]{get_multi_region_access_point} \tab Returns configuration information about the specified Multi-Region Access Point\cr
\link[=s3control_get_multi_region_access_point_policy]{get_multi_region_access_point_policy} \tab Returns the access control policy of the specified Multi-Region Access Point\cr
\link[=s3control_get_multi_region_access_point_policy_status]{get_multi_region_access_point_policy_status} \tab Indicates whether the specified Multi-Region Access Point has an access control policy that allows public access\cr
\link[=s3control_get_multi_region_access_point_routes]{get_multi_region_access_point_routes} \tab Returns the routing configuration for a Multi-Region Access Point, indicating which Regions are active or passive\cr
\link[=s3control_get_public_access_block]{get_public_access_block} \tab Retrieves the PublicAccessBlock configuration for an Amazon Web Services account\cr
\link[=s3control_get_storage_lens_configuration]{get_storage_lens_configuration} \tab Gets the Amazon S3 Storage Lens configuration\cr
\link[=s3control_get_storage_lens_configuration_tagging]{get_storage_lens_configuration_tagging} \tab Gets the tags of Amazon S3 Storage Lens configuration\cr
\link[=s3control_list_access_points]{list_access_points} \tab Returns a list of the access points that are owned by the current account that's associated with the specified bucket\cr
\link[=s3control_list_access_points_for_object_lambda]{list_access_points_for_object_lambda} \tab Returns some or all (up to 1,000) access points associated with the Object Lambda Access Point per call\cr
\link[=s3control_list_jobs]{list_jobs} \tab Lists current S3 Batch Operations jobs and jobs that have ended within the last 30 days for the Amazon Web Services account making the request\cr
\link[=s3control_list_multi_region_access_points]{list_multi_region_access_points} \tab Returns a list of the Multi-Region Access Points currently associated with the specified Amazon Web Services account\cr
\link[=s3control_list_regional_buckets]{list_regional_buckets} \tab Returns a list of all Outposts buckets in an Outpost that are owned by the authenticated sender of the request\cr
\link[=s3control_list_storage_lens_configurations]{list_storage_lens_configurations} \tab Gets a list of Amazon S3 Storage Lens configurations\cr
\link[=s3control_put_access_point_configuration_for_object_lambda]{put_access_point_configuration_for_object_lambda} \tab Replaces configuration for an Object Lambda Access Point\cr
\link[=s3control_put_access_point_policy]{put_access_point_policy} \tab Associates an access policy with the specified access point\cr
\link[=s3control_put_access_point_policy_for_object_lambda]{put_access_point_policy_for_object_lambda} \tab Creates or replaces resource policy for an Object Lambda Access Point\cr
\link[=s3control_put_bucket_lifecycle_configuration]{put_bucket_lifecycle_configuration} \tab This action puts a lifecycle configuration to an Amazon S3 on Outposts bucket\cr
\link[=s3control_put_bucket_policy]{put_bucket_policy} \tab This action puts a bucket policy to an Amazon S3 on Outposts bucket\cr
\link[=s3control_put_bucket_replication]{put_bucket_replication} \tab This action creates an Amazon S3 on Outposts bucket's replication configuration\cr
\link[=s3control_put_bucket_tagging]{put_bucket_tagging} \tab This action puts tags on an Amazon S3 on Outposts bucket\cr
\link[=s3control_put_bucket_versioning]{put_bucket_versioning} \tab This operation sets the versioning state for S3 on Outposts buckets only\cr
\link[=s3control_put_job_tagging]{put_job_tagging} \tab Sets the supplied tag-set on an S3 Batch Operations job\cr
\link[=s3control_put_multi_region_access_point_policy]{put_multi_region_access_point_policy} \tab Associates an access control policy with the specified Multi-Region Access Point\cr
\link[=s3control_put_public_access_block]{put_public_access_block} \tab Creates or modifies the PublicAccessBlock configuration for an Amazon Web Services account\cr
\link[=s3control_put_storage_lens_configuration]{put_storage_lens_configuration} \tab Puts an Amazon S3 Storage Lens configuration\cr
\link[=s3control_put_storage_lens_configuration_tagging]{put_storage_lens_configuration_tagging} \tab Put or replace tags on an existing Amazon S3 Storage Lens configuration\cr
\link[=s3control_submit_multi_region_access_point_routes]{submit_multi_region_access_point_routes} \tab Submits an updated route configuration for a Multi-Region Access Point\cr
\link[=s3control_update_job_priority]{update_job_priority} \tab Updates an existing S3 Batch Operations job's priority\cr
\link[=s3control_update_job_status]{update_job_status} \tab Updates the status for the specified job
}
}

\examples{
\dontrun{
svc <- s3control()
svc$create_access_point(
  Foo = 123
)
}

}
