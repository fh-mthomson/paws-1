% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/appstream_service.R
\name{appstream}
\alias{appstream}
\title{Amazon AppStream}
\usage{
appstream(
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
Amazon AppStream 2.0

This is the \emph{Amazon AppStream 2.0 API Reference}. This documentation
provides descriptions and syntax for each of the actions and data types
in AppStream 2.0. AppStream 2.0 is a fully managed, secure application
streaming service that lets you stream desktop applications to users
without rewriting applications. AppStream 2.0 manages the AWS resources
that are required to host and run your applications, scales
automatically, and provides access to your users on demand.

You can call the AppStream 2.0 API operations by using an interface VPC
endpoint (interface endpoint). For more information, see \href{https://docs.aws.amazon.com/appstream2/latest/developerguide/access-api-cli-through-interface-vpc-endpoint.html}{Access AppStream 2.0 API Operations and CLI Commands Through an Interface VPC Endpoint}
in the \emph{Amazon AppStream 2.0 Administration Guide}.

To learn more about AppStream 2.0, see the following resources:
\itemize{
\item \href{https://aws.amazon.com/appstream2/}{Amazon AppStream 2.0 product page}
\item \href{https://docs.aws.amazon.com/appstream2/}{Amazon AppStream 2.0 documentation}
}
}
\section{Service syntax}{


\if{html}{\out{<div class="sourceCode">}}\preformatted{svc <- appstream(
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
\link[=appstream_associate_app_block_builder_app_block]{associate_app_block_builder_app_block} \tab Associates the specified app block builder with the specified app block\cr
\link[=appstream_associate_application_fleet]{associate_application_fleet} \tab Associates the specified application with the specified fleet\cr
\link[=appstream_associate_application_to_entitlement]{associate_application_to_entitlement} \tab Associates an application to entitle\cr
\link[=appstream_associate_fleet]{associate_fleet} \tab Associates the specified fleet with the specified stack\cr
\link[=appstream_batch_associate_user_stack]{batch_associate_user_stack} \tab Associates the specified users with the specified stacks\cr
\link[=appstream_batch_disassociate_user_stack]{batch_disassociate_user_stack} \tab Disassociates the specified users from the specified stacks\cr
\link[=appstream_copy_image]{copy_image} \tab Copies the image within the same region or to a new region within the same AWS account\cr
\link[=appstream_create_app_block]{create_app_block} \tab Creates an app block\cr
\link[=appstream_create_app_block_builder]{create_app_block_builder} \tab Creates an app block builder\cr
\link[=appstream_create_app_block_builder_streaming_url]{create_app_block_builder_streaming_url} \tab Creates a URL to start a create app block builder streaming session\cr
\link[=appstream_create_application]{create_application} \tab Creates an application\cr
\link[=appstream_create_directory_config]{create_directory_config} \tab Creates a Directory Config object in AppStream 2\cr
\link[=appstream_create_entitlement]{create_entitlement} \tab Creates a new entitlement\cr
\link[=appstream_create_fleet]{create_fleet} \tab Creates a fleet\cr
\link[=appstream_create_image_builder]{create_image_builder} \tab Creates an image builder\cr
\link[=appstream_create_image_builder_streaming_url]{create_image_builder_streaming_url} \tab Creates a URL to start an image builder streaming session\cr
\link[=appstream_create_stack]{create_stack} \tab Creates a stack to start streaming applications to users\cr
\link[=appstream_create_streaming_url]{create_streaming_url} \tab Creates a temporary URL to start an AppStream 2\cr
\link[=appstream_create_updated_image]{create_updated_image} \tab Creates a new image with the latest Windows operating system updates, driver updates, and AppStream 2\cr
\link[=appstream_create_usage_report_subscription]{create_usage_report_subscription} \tab Creates a usage report subscription\cr
\link[=appstream_create_user]{create_user} \tab Creates a new user in the user pool\cr
\link[=appstream_delete_app_block]{delete_app_block} \tab Deletes an app block\cr
\link[=appstream_delete_app_block_builder]{delete_app_block_builder} \tab Deletes an app block builder\cr
\link[=appstream_delete_application]{delete_application} \tab Deletes an application\cr
\link[=appstream_delete_directory_config]{delete_directory_config} \tab Deletes the specified Directory Config object from AppStream 2\cr
\link[=appstream_delete_entitlement]{delete_entitlement} \tab Deletes the specified entitlement\cr
\link[=appstream_delete_fleet]{delete_fleet} \tab Deletes the specified fleet\cr
\link[=appstream_delete_image]{delete_image} \tab Deletes the specified image\cr
\link[=appstream_delete_image_builder]{delete_image_builder} \tab Deletes the specified image builder and releases the capacity\cr
\link[=appstream_delete_image_permissions]{delete_image_permissions} \tab Deletes permissions for the specified private image\cr
\link[=appstream_delete_stack]{delete_stack} \tab Deletes the specified stack\cr
\link[=appstream_delete_usage_report_subscription]{delete_usage_report_subscription} \tab Disables usage report generation\cr
\link[=appstream_delete_user]{delete_user} \tab Deletes a user from the user pool\cr
\link[=appstream_describe_app_block_builder_app_block_associations]{describe_app_block_builder_app_block_associations} \tab Retrieves a list that describes one or more app block builder associations\cr
\link[=appstream_describe_app_block_builders]{describe_app_block_builders} \tab Retrieves a list that describes one or more app block builders\cr
\link[=appstream_describe_app_blocks]{describe_app_blocks} \tab Retrieves a list that describes one or more app blocks\cr
\link[=appstream_describe_application_fleet_associations]{describe_application_fleet_associations} \tab Retrieves a list that describes one or more application fleet associations\cr
\link[=appstream_describe_applications]{describe_applications} \tab Retrieves a list that describes one or more applications\cr
\link[=appstream_describe_directory_configs]{describe_directory_configs} \tab Retrieves a list that describes one or more specified Directory Config objects for AppStream 2\cr
\link[=appstream_describe_entitlements]{describe_entitlements} \tab Retrieves a list that describes one of more entitlements\cr
\link[=appstream_describe_fleets]{describe_fleets} \tab Retrieves a list that describes one or more specified fleets, if the fleet names are provided\cr
\link[=appstream_describe_image_builders]{describe_image_builders} \tab Retrieves a list that describes one or more specified image builders, if the image builder names are provided\cr
\link[=appstream_describe_image_permissions]{describe_image_permissions} \tab Retrieves a list that describes the permissions for shared AWS account IDs on a private image that you own\cr
\link[=appstream_describe_images]{describe_images} \tab Retrieves a list that describes one or more specified images, if the image names or image ARNs are provided\cr
\link[=appstream_describe_sessions]{describe_sessions} \tab Retrieves a list that describes the streaming sessions for a specified stack and fleet\cr
\link[=appstream_describe_stacks]{describe_stacks} \tab Retrieves a list that describes one or more specified stacks, if the stack names are provided\cr
\link[=appstream_describe_usage_report_subscriptions]{describe_usage_report_subscriptions} \tab Retrieves a list that describes one or more usage report subscriptions\cr
\link[=appstream_describe_users]{describe_users} \tab Retrieves a list that describes one or more specified users in the user pool\cr
\link[=appstream_describe_user_stack_associations]{describe_user_stack_associations} \tab Retrieves a list that describes the UserStackAssociation objects\cr
\link[=appstream_disable_user]{disable_user} \tab Disables the specified user in the user pool\cr
\link[=appstream_disassociate_app_block_builder_app_block]{disassociate_app_block_builder_app_block} \tab Disassociates a specified app block builder from a specified app block\cr
\link[=appstream_disassociate_application_fleet]{disassociate_application_fleet} \tab Disassociates the specified application from the fleet\cr
\link[=appstream_disassociate_application_from_entitlement]{disassociate_application_from_entitlement} \tab Deletes the specified application from the specified entitlement\cr
\link[=appstream_disassociate_fleet]{disassociate_fleet} \tab Disassociates the specified fleet from the specified stack\cr
\link[=appstream_enable_user]{enable_user} \tab Enables a user in the user pool\cr
\link[=appstream_expire_session]{expire_session} \tab Immediately stops the specified streaming session\cr
\link[=appstream_list_associated_fleets]{list_associated_fleets} \tab Retrieves the name of the fleet that is associated with the specified stack\cr
\link[=appstream_list_associated_stacks]{list_associated_stacks} \tab Retrieves the name of the stack with which the specified fleet is associated\cr
\link[=appstream_list_entitled_applications]{list_entitled_applications} \tab Retrieves a list of entitled applications\cr
\link[=appstream_list_tags_for_resource]{list_tags_for_resource} \tab Retrieves a list of all tags for the specified AppStream 2\cr
\link[=appstream_start_app_block_builder]{start_app_block_builder} \tab Starts an app block builder\cr
\link[=appstream_start_fleet]{start_fleet} \tab Starts the specified fleet\cr
\link[=appstream_start_image_builder]{start_image_builder} \tab Starts the specified image builder\cr
\link[=appstream_stop_app_block_builder]{stop_app_block_builder} \tab Stops an app block builder\cr
\link[=appstream_stop_fleet]{stop_fleet} \tab Stops the specified fleet\cr
\link[=appstream_stop_image_builder]{stop_image_builder} \tab Stops the specified image builder\cr
\link[=appstream_tag_resource]{tag_resource} \tab Adds or overwrites one or more tags for the specified AppStream 2\cr
\link[=appstream_untag_resource]{untag_resource} \tab Disassociates one or more specified tags from the specified AppStream 2\cr
\link[=appstream_update_app_block_builder]{update_app_block_builder} \tab Updates an app block builder\cr
\link[=appstream_update_application]{update_application} \tab Updates the specified application\cr
\link[=appstream_update_directory_config]{update_directory_config} \tab Updates the specified Directory Config object in AppStream 2\cr
\link[=appstream_update_entitlement]{update_entitlement} \tab Updates the specified entitlement\cr
\link[=appstream_update_fleet]{update_fleet} \tab Updates the specified fleet\cr
\link[=appstream_update_image_permissions]{update_image_permissions} \tab Adds or updates permissions for the specified private image\cr
\link[=appstream_update_stack]{update_stack} \tab Updates the specified fields for the specified stack
}
}

\examples{
\dontrun{
svc <- appstream()
svc$associate_app_block_builder_app_block(
  Foo = 123
)
}

}
