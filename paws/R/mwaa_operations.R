# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include mwaa_service.R
NULL

#' Creates a CLI token for the Airflow CLI
#'
#' @description
#' Creates a CLI token for the Airflow CLI. To learn more, see [Creating an
#' Apache Airflow CLI
#' token](https://docs.aws.amazon.com/mwaa/latest/userguide/call-mwaa-apis-cli.html).
#'
#' @usage
#' mwaa_create_cli_token(Name)
#'
#' @param Name &#91;required&#93; The name of the Amazon MWAA environment. For example,
#' `MyMWAAEnvironment`.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   CliToken = "string",
#'   WebServerHostname = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$create_cli_token(
#'   Name = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mwaa_create_cli_token
#'
#' @aliases mwaa_create_cli_token
mwaa_create_cli_token <- function(Name) {
  op <- new_operation(
    name = "CreateCliToken",
    http_method = "POST",
    http_path = "/clitoken/{Name}",
    paginator = list()
  )
  input <- .mwaa$create_cli_token_input(Name = Name)
  output <- .mwaa$create_cli_token_output()
  config <- get_config()
  svc <- .mwaa$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mwaa$operations$create_cli_token <- mwaa_create_cli_token

#' Creates an Amazon Managed Workflows for Apache Airflow (MWAA)
#' environment
#'
#' @description
#' Creates an Amazon Managed Workflows for Apache Airflow (MWAA)
#' environment.
#'
#' @usage
#' mwaa_create_environment(AirflowConfigurationOptions, AirflowVersion,
#'   DagS3Path, EnvironmentClass, ExecutionRoleArn, KmsKey,
#'   LoggingConfiguration, MaxWorkers, MinWorkers, Name,
#'   NetworkConfiguration, PluginsS3ObjectVersion, PluginsS3Path,
#'   RequirementsS3ObjectVersion, RequirementsS3Path, Schedulers,
#'   SourceBucketArn, StartupScriptS3ObjectVersion, StartupScriptS3Path,
#'   Tags, WebserverAccessMode, WeeklyMaintenanceWindowStart)
#'
#' @param AirflowConfigurationOptions A list of key-value pairs containing the Apache Airflow configuration
#' options you want to attach to your environment. For more information,
#' see [Apache Airflow configuration
#' options](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html).
#' @param AirflowVersion The Apache Airflow version for your environment. If no value is
#' specified, it defaults to the latest version. For more information, see
#' [Apache Airflow versions on Amazon Managed Workflows for Apache Airflow
#' (MWAA)](https://docs.aws.amazon.com/mwaa/latest/userguide/airflow-versions.html).
#' 
#' Valid values: `1.10.12`, `2.0.2`, `2.2.2`, `2.4.3`, `2.5.1`, `2.6.3`,
#' `2.7.2`.
#' @param DagS3Path &#91;required&#93; The relative path to the DAGs folder on your Amazon S3 bucket. For
#' example, `dags`. For more information, see [Adding or updating
#' DAGs](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html).
#' @param EnvironmentClass The environment class type. Valid values: `mw1.small`, `mw1.medium`,
#' `mw1.large`. For more information, see [Amazon MWAA environment
#' class](https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html).
#' @param ExecutionRoleArn &#91;required&#93; The Amazon Resource Name (ARN) of the execution role for your
#' environment. An execution role is an Amazon Web Services Identity and
#' Access Management (IAM) role that grants MWAA permission to access
#' Amazon Web Services services and resources used by your environment. For
#' example, `arn:aws:iam::123456789:role/my-execution-role`. For more
#' information, see [Amazon MWAA Execution
#' role](https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html).
#' @param KmsKey The Amazon Web Services Key Management Service (KMS) key to encrypt the
#' data in your environment. You can use an Amazon Web Services owned CMK,
#' or a Customer managed CMK (advanced). For more information, see [Create
#' an Amazon MWAA
#' environment](https://docs.aws.amazon.com/mwaa/latest/userguide/create-environment.html).
#' @param LoggingConfiguration Defines the Apache Airflow logs to send to CloudWatch Logs.
#' @param MaxWorkers The maximum number of workers that you want to run in your environment.
#' MWAA scales the number of Apache Airflow workers up to the number you
#' specify in the `MaxWorkers` field. For example, `20`. When there are no
#' more tasks running, and no more in the queue, MWAA disposes of the extra
#' workers leaving the one worker that is included with your environment,
#' or the number you specify in `MinWorkers`.
#' @param MinWorkers The minimum number of workers that you want to run in your environment.
#' MWAA scales the number of Apache Airflow workers up to the number you
#' specify in the `MaxWorkers` field. When there are no more tasks running,
#' and no more in the queue, MWAA disposes of the extra workers leaving the
#' worker count you specify in the `MinWorkers` field. For example, `2`.
#' @param Name &#91;required&#93; The name of the Amazon MWAA environment. For example,
#' `MyMWAAEnvironment`.
#' @param NetworkConfiguration &#91;required&#93; The VPC networking components used to secure and enable network traffic
#' between the Amazon Web Services resources for your environment. For more
#' information, see [About networking on Amazon
#' MWAA](https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html).
#' @param PluginsS3ObjectVersion The version of the plugins.zip file on your Amazon S3 bucket. You must
#' specify a version each time a plugins.zip file is updated. For more
#' information, see [How S3 Versioning
#' works](https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html).
#' @param PluginsS3Path The relative path to the `plugins.zip` file on your Amazon S3 bucket.
#' For example, `plugins.zip`. If specified, then the `plugins.zip` version
#' is required. For more information, see [Installing custom
#' plugins](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html).
#' @param RequirementsS3ObjectVersion The version of the `requirements.txt` file on your Amazon S3 bucket. You
#' must specify a version each time a requirements.txt file is updated. For
#' more information, see [How S3 Versioning
#' works](https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html).
#' @param RequirementsS3Path The relative path to the `requirements.txt` file on your Amazon S3
#' bucket. For example, `requirements.txt`. If specified, then a version is
#' required. For more information, see [Installing Python
#' dependencies](https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html).
#' @param Schedulers The number of Apache Airflow schedulers to run in your environment.
#' Valid values:
#' 
#' -   v2 - Accepts between 2 to 5. Defaults to 2.
#' 
#' -   v1 - Accepts 1.
#' @param SourceBucketArn &#91;required&#93; The Amazon Resource Name (ARN) of the Amazon S3 bucket where your DAG
#' code and supporting files are stored. For example,
#' `arn:aws:s3:::my-airflow-bucket-unique-name`. For more information, see
#' [Create an Amazon S3 bucket for Amazon
#' MWAA](https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html).
#' @param StartupScriptS3ObjectVersion The version of the startup shell script in your Amazon S3 bucket. You
#' must specify the [version
#' ID](https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html)
#' that Amazon S3 assigns to the file every time you update the script.
#' 
#' Version IDs are Unicode, UTF-8 encoded, URL-ready, opaque strings that
#' are no more than 1,024 bytes long. The following is an example:
#' 
#' `3sL4kqtJlcpXroDTDmJ+rmSpXd3dIbrHY+MTRCxf3vjVBH40Nr8X8gdRQBpUMLUo`
#' 
#' For more information, see [Using a startup
#' script](https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html).
#' @param StartupScriptS3Path The relative path to the startup shell script in your Amazon S3 bucket.
#' For example, `s3://mwaa-environment/startup.sh`.
#' 
#' Amazon MWAA runs the script as your environment starts, and before
#' running the Apache Airflow process. You can use this script to install
#' dependencies, modify Apache Airflow configuration options, and set
#' environment variables. For more information, see [Using a startup
#' script](https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html).
#' @param Tags The key-value tag pairs you want to associate to your environment. For
#' example, `"Environment": "Staging"`. For more information, see [Tagging
#' Amazon Web Services
#' resources](https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html).
#' @param WebserverAccessMode The Apache Airflow *Web server* access mode. For more information, see
#' [Apache Airflow access
#' modes](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html).
#' @param WeeklyMaintenanceWindowStart The day and time of the week in Coordinated Universal Time (UTC) 24-hour
#' standard time to start weekly maintenance updates of your environment in
#' the following format: `DAY:HH:MM`. For example: `TUE:03:30`. You can
#' specify a start time in 30 minute increments only.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Arn = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$create_environment(
#'   AirflowConfigurationOptions = list(
#'     "string"
#'   ),
#'   AirflowVersion = "string",
#'   DagS3Path = "string",
#'   EnvironmentClass = "string",
#'   ExecutionRoleArn = "string",
#'   KmsKey = "string",
#'   LoggingConfiguration = list(
#'     DagProcessingLogs = list(
#'       Enabled = TRUE|FALSE,
#'       LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
#'     ),
#'     SchedulerLogs = list(
#'       Enabled = TRUE|FALSE,
#'       LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
#'     ),
#'     TaskLogs = list(
#'       Enabled = TRUE|FALSE,
#'       LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
#'     ),
#'     WebserverLogs = list(
#'       Enabled = TRUE|FALSE,
#'       LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
#'     ),
#'     WorkerLogs = list(
#'       Enabled = TRUE|FALSE,
#'       LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
#'     )
#'   ),
#'   MaxWorkers = 123,
#'   MinWorkers = 123,
#'   Name = "string",
#'   NetworkConfiguration = list(
#'     SecurityGroupIds = list(
#'       "string"
#'     ),
#'     SubnetIds = list(
#'       "string"
#'     )
#'   ),
#'   PluginsS3ObjectVersion = "string",
#'   PluginsS3Path = "string",
#'   RequirementsS3ObjectVersion = "string",
#'   RequirementsS3Path = "string",
#'   Schedulers = 123,
#'   SourceBucketArn = "string",
#'   StartupScriptS3ObjectVersion = "string",
#'   StartupScriptS3Path = "string",
#'   Tags = list(
#'     "string"
#'   ),
#'   WebserverAccessMode = "PRIVATE_ONLY"|"PUBLIC_ONLY",
#'   WeeklyMaintenanceWindowStart = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mwaa_create_environment
#'
#' @aliases mwaa_create_environment
mwaa_create_environment <- function(AirflowConfigurationOptions = NULL, AirflowVersion = NULL, DagS3Path, EnvironmentClass = NULL, ExecutionRoleArn, KmsKey = NULL, LoggingConfiguration = NULL, MaxWorkers = NULL, MinWorkers = NULL, Name, NetworkConfiguration, PluginsS3ObjectVersion = NULL, PluginsS3Path = NULL, RequirementsS3ObjectVersion = NULL, RequirementsS3Path = NULL, Schedulers = NULL, SourceBucketArn, StartupScriptS3ObjectVersion = NULL, StartupScriptS3Path = NULL, Tags = NULL, WebserverAccessMode = NULL, WeeklyMaintenanceWindowStart = NULL) {
  op <- new_operation(
    name = "CreateEnvironment",
    http_method = "PUT",
    http_path = "/environments/{Name}",
    paginator = list()
  )
  input <- .mwaa$create_environment_input(AirflowConfigurationOptions = AirflowConfigurationOptions, AirflowVersion = AirflowVersion, DagS3Path = DagS3Path, EnvironmentClass = EnvironmentClass, ExecutionRoleArn = ExecutionRoleArn, KmsKey = KmsKey, LoggingConfiguration = LoggingConfiguration, MaxWorkers = MaxWorkers, MinWorkers = MinWorkers, Name = Name, NetworkConfiguration = NetworkConfiguration, PluginsS3ObjectVersion = PluginsS3ObjectVersion, PluginsS3Path = PluginsS3Path, RequirementsS3ObjectVersion = RequirementsS3ObjectVersion, RequirementsS3Path = RequirementsS3Path, Schedulers = Schedulers, SourceBucketArn = SourceBucketArn, StartupScriptS3ObjectVersion = StartupScriptS3ObjectVersion, StartupScriptS3Path = StartupScriptS3Path, Tags = Tags, WebserverAccessMode = WebserverAccessMode, WeeklyMaintenanceWindowStart = WeeklyMaintenanceWindowStart)
  output <- .mwaa$create_environment_output()
  config <- get_config()
  svc <- .mwaa$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mwaa$operations$create_environment <- mwaa_create_environment

#' Creates a web login token for the Airflow Web UI
#'
#' @description
#' Creates a web login token for the Airflow Web UI. To learn more, see
#' [Creating an Apache Airflow web login
#' token](https://docs.aws.amazon.com/mwaa/latest/userguide/call-mwaa-apis-web.html).
#'
#' @usage
#' mwaa_create_web_login_token(Name)
#'
#' @param Name &#91;required&#93; The name of the Amazon MWAA environment. For example,
#' `MyMWAAEnvironment`.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   WebServerHostname = "string",
#'   WebToken = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$create_web_login_token(
#'   Name = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mwaa_create_web_login_token
#'
#' @aliases mwaa_create_web_login_token
mwaa_create_web_login_token <- function(Name) {
  op <- new_operation(
    name = "CreateWebLoginToken",
    http_method = "POST",
    http_path = "/webtoken/{Name}",
    paginator = list()
  )
  input <- .mwaa$create_web_login_token_input(Name = Name)
  output <- .mwaa$create_web_login_token_output()
  config <- get_config()
  svc <- .mwaa$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mwaa$operations$create_web_login_token <- mwaa_create_web_login_token

#' Deletes an Amazon Managed Workflows for Apache Airflow (MWAA)
#' environment
#'
#' @description
#' Deletes an Amazon Managed Workflows for Apache Airflow (MWAA)
#' environment.
#'
#' @usage
#' mwaa_delete_environment(Name)
#'
#' @param Name &#91;required&#93; The name of the Amazon MWAA environment. For example,
#' `MyMWAAEnvironment`.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$delete_environment(
#'   Name = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mwaa_delete_environment
#'
#' @aliases mwaa_delete_environment
mwaa_delete_environment <- function(Name) {
  op <- new_operation(
    name = "DeleteEnvironment",
    http_method = "DELETE",
    http_path = "/environments/{Name}",
    paginator = list()
  )
  input <- .mwaa$delete_environment_input(Name = Name)
  output <- .mwaa$delete_environment_output()
  config <- get_config()
  svc <- .mwaa$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mwaa$operations$delete_environment <- mwaa_delete_environment

#' Describes an Amazon Managed Workflows for Apache Airflow (MWAA)
#' environment
#'
#' @description
#' Describes an Amazon Managed Workflows for Apache Airflow (MWAA)
#' environment.
#'
#' @usage
#' mwaa_get_environment(Name)
#'
#' @param Name &#91;required&#93; The name of the Amazon MWAA environment. For example,
#' `MyMWAAEnvironment`.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Environment = list(
#'     AirflowConfigurationOptions = list(
#'       "string"
#'     ),
#'     AirflowVersion = "string",
#'     Arn = "string",
#'     CreatedAt = as.POSIXct(
#'       "2015-01-01"
#'     ),
#'     DagS3Path = "string",
#'     EnvironmentClass = "string",
#'     ExecutionRoleArn = "string",
#'     KmsKey = "string",
#'     LastUpdate = list(
#'       CreatedAt = as.POSIXct(
#'         "2015-01-01"
#'       ),
#'       Error = list(
#'         ErrorCode = "string",
#'         ErrorMessage = "string"
#'       ),
#'       Source = "string",
#'       Status = "SUCCESS"|"PENDING"|"FAILED"
#'     ),
#'     LoggingConfiguration = list(
#'       DagProcessingLogs = list(
#'         CloudWatchLogGroupArn = "string",
#'         Enabled = TRUE|FALSE,
#'         LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
#'       ),
#'       SchedulerLogs = list(
#'         CloudWatchLogGroupArn = "string",
#'         Enabled = TRUE|FALSE,
#'         LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
#'       ),
#'       TaskLogs = list(
#'         CloudWatchLogGroupArn = "string",
#'         Enabled = TRUE|FALSE,
#'         LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
#'       ),
#'       WebserverLogs = list(
#'         CloudWatchLogGroupArn = "string",
#'         Enabled = TRUE|FALSE,
#'         LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
#'       ),
#'       WorkerLogs = list(
#'         CloudWatchLogGroupArn = "string",
#'         Enabled = TRUE|FALSE,
#'         LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
#'       )
#'     ),
#'     MaxWorkers = 123,
#'     MinWorkers = 123,
#'     Name = "string",
#'     NetworkConfiguration = list(
#'       SecurityGroupIds = list(
#'         "string"
#'       ),
#'       SubnetIds = list(
#'         "string"
#'       )
#'     ),
#'     PluginsS3ObjectVersion = "string",
#'     PluginsS3Path = "string",
#'     RequirementsS3ObjectVersion = "string",
#'     RequirementsS3Path = "string",
#'     Schedulers = 123,
#'     ServiceRoleArn = "string",
#'     SourceBucketArn = "string",
#'     StartupScriptS3ObjectVersion = "string",
#'     StartupScriptS3Path = "string",
#'     Status = "CREATING"|"CREATE_FAILED"|"AVAILABLE"|"UPDATING"|"DELETING"|"DELETED"|"UNAVAILABLE"|"UPDATE_FAILED"|"ROLLING_BACK"|"CREATING_SNAPSHOT",
#'     Tags = list(
#'       "string"
#'     ),
#'     WebserverAccessMode = "PRIVATE_ONLY"|"PUBLIC_ONLY",
#'     WebserverUrl = "string",
#'     WeeklyMaintenanceWindowStart = "string"
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$get_environment(
#'   Name = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mwaa_get_environment
#'
#' @aliases mwaa_get_environment
mwaa_get_environment <- function(Name) {
  op <- new_operation(
    name = "GetEnvironment",
    http_method = "GET",
    http_path = "/environments/{Name}",
    paginator = list()
  )
  input <- .mwaa$get_environment_input(Name = Name)
  output <- .mwaa$get_environment_output()
  config <- get_config()
  svc <- .mwaa$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mwaa$operations$get_environment <- mwaa_get_environment

#' Lists the Amazon Managed Workflows for Apache Airflow (MWAA)
#' environments
#'
#' @description
#' Lists the Amazon Managed Workflows for Apache Airflow (MWAA)
#' environments.
#'
#' @usage
#' mwaa_list_environments(MaxResults, NextToken)
#'
#' @param MaxResults The maximum number of results to retrieve per page. For example, `5`
#' environments per page.
#' @param NextToken Retrieves the next page of the results.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Environments = list(
#'     "string"
#'   ),
#'   NextToken = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_environments(
#'   MaxResults = 123,
#'   NextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mwaa_list_environments
#'
#' @aliases mwaa_list_environments
mwaa_list_environments <- function(MaxResults = NULL, NextToken = NULL) {
  op <- new_operation(
    name = "ListEnvironments",
    http_method = "GET",
    http_path = "/environments",
    paginator = list(input_token = "NextToken", output_token = "NextToken", limit_key = "MaxResults", result_key = "Environments")
  )
  input <- .mwaa$list_environments_input(MaxResults = MaxResults, NextToken = NextToken)
  output <- .mwaa$list_environments_output()
  config <- get_config()
  svc <- .mwaa$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mwaa$operations$list_environments <- mwaa_list_environments

#' Lists the key-value tag pairs associated to the Amazon Managed Workflows
#' for Apache Airflow (MWAA) environment
#'
#' @description
#' Lists the key-value tag pairs associated to the Amazon Managed Workflows
#' for Apache Airflow (MWAA) environment. For example,
#' `"Environment": "Staging"`.
#'
#' @usage
#' mwaa_list_tags_for_resource(ResourceArn)
#'
#' @param ResourceArn &#91;required&#93; The Amazon Resource Name (ARN) of the Amazon MWAA environment. For
#' example,
#' `arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment`.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Tags = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_tags_for_resource(
#'   ResourceArn = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mwaa_list_tags_for_resource
#'
#' @aliases mwaa_list_tags_for_resource
mwaa_list_tags_for_resource <- function(ResourceArn) {
  op <- new_operation(
    name = "ListTagsForResource",
    http_method = "GET",
    http_path = "/tags/{ResourceArn}",
    paginator = list()
  )
  input <- .mwaa$list_tags_for_resource_input(ResourceArn = ResourceArn)
  output <- .mwaa$list_tags_for_resource_output()
  config <- get_config()
  svc <- .mwaa$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mwaa$operations$list_tags_for_resource <- mwaa_list_tags_for_resource

#' Internal only
#'
#' @description
#' **Internal only**. Publishes environment health metrics to Amazon
#' CloudWatch.
#'
#' @usage
#' mwaa_publish_metrics(EnvironmentName, MetricData)
#'
#' @param EnvironmentName &#91;required&#93; **Internal only**. The name of the environment.
#' @param MetricData &#91;required&#93; **Internal only**. Publishes metrics to Amazon CloudWatch. To learn more
#' about the metrics published to Amazon CloudWatch, see [Amazon MWAA
#' performance metrics in Amazon
#' CloudWatch](https://docs.aws.amazon.com/mwaa/latest/userguide/cw-metrics.html).
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$publish_metrics(
#'   EnvironmentName = "string",
#'   MetricData = list(
#'     list(
#'       Dimensions = list(
#'         list(
#'           Name = "string",
#'           Value = "string"
#'         )
#'       ),
#'       MetricName = "string",
#'       StatisticValues = list(
#'         Maximum = 123.0,
#'         Minimum = 123.0,
#'         SampleCount = 123,
#'         Sum = 123.0
#'       ),
#'       Timestamp = as.POSIXct(
#'         "2015-01-01"
#'       ),
#'       Unit = "Seconds"|"Microseconds"|"Milliseconds"|"Bytes"|"Kilobytes"|"Megabytes"|"Gigabytes"|"Terabytes"|"Bits"|"Kilobits"|"Megabits"|"Gigabits"|"Terabits"|"Percent"|"Count"|"Bytes/Second"|"Kilobytes/Second"|"Megabytes/Second"|"Gigabytes/Second"|"Terabytes/Second"|"Bits/Second"|"Kilobits/Second"|"Megabits/Second"|"Gigabits/Second"|"Terabits/Second"|"Count/Second"|"None",
#'       Value = 123.0
#'     )
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mwaa_publish_metrics
#'
#' @aliases mwaa_publish_metrics
mwaa_publish_metrics <- function(EnvironmentName, MetricData) {
  op <- new_operation(
    name = "PublishMetrics",
    http_method = "POST",
    http_path = "/metrics/environments/{EnvironmentName}",
    paginator = list()
  )
  input <- .mwaa$publish_metrics_input(EnvironmentName = EnvironmentName, MetricData = MetricData)
  output <- .mwaa$publish_metrics_output()
  config <- get_config()
  svc <- .mwaa$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mwaa$operations$publish_metrics <- mwaa_publish_metrics

#' Associates key-value tag pairs to your Amazon Managed Workflows for
#' Apache Airflow (MWAA) environment
#'
#' @description
#' Associates key-value tag pairs to your Amazon Managed Workflows for
#' Apache Airflow (MWAA) environment.
#'
#' @usage
#' mwaa_tag_resource(ResourceArn, Tags)
#'
#' @param ResourceArn &#91;required&#93; The Amazon Resource Name (ARN) of the Amazon MWAA environment. For
#' example,
#' `arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment`.
#' @param Tags &#91;required&#93; The key-value tag pairs you want to associate to your environment. For
#' example, `"Environment": "Staging"`. For more information, see [Tagging
#' Amazon Web Services
#' resources](https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html).
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$tag_resource(
#'   ResourceArn = "string",
#'   Tags = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mwaa_tag_resource
#'
#' @aliases mwaa_tag_resource
mwaa_tag_resource <- function(ResourceArn, Tags) {
  op <- new_operation(
    name = "TagResource",
    http_method = "POST",
    http_path = "/tags/{ResourceArn}",
    paginator = list()
  )
  input <- .mwaa$tag_resource_input(ResourceArn = ResourceArn, Tags = Tags)
  output <- .mwaa$tag_resource_output()
  config <- get_config()
  svc <- .mwaa$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mwaa$operations$tag_resource <- mwaa_tag_resource

#' Removes key-value tag pairs associated to your Amazon Managed Workflows
#' for Apache Airflow (MWAA) environment
#'
#' @description
#' Removes key-value tag pairs associated to your Amazon Managed Workflows
#' for Apache Airflow (MWAA) environment. For example,
#' `"Environment": "Staging"`.
#'
#' @usage
#' mwaa_untag_resource(ResourceArn, tagKeys)
#'
#' @param ResourceArn &#91;required&#93; The Amazon Resource Name (ARN) of the Amazon MWAA environment. For
#' example,
#' `arn:aws:airflow:us-east-1:123456789012:environment/MyMWAAEnvironment`.
#' @param tagKeys &#91;required&#93; The key-value tag pair you want to remove. For example,
#' `"Environment": "Staging"`.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$untag_resource(
#'   ResourceArn = "string",
#'   tagKeys = list(
#'     "string"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mwaa_untag_resource
#'
#' @aliases mwaa_untag_resource
mwaa_untag_resource <- function(ResourceArn, tagKeys) {
  op <- new_operation(
    name = "UntagResource",
    http_method = "DELETE",
    http_path = "/tags/{ResourceArn}",
    paginator = list()
  )
  input <- .mwaa$untag_resource_input(ResourceArn = ResourceArn, tagKeys = tagKeys)
  output <- .mwaa$untag_resource_output()
  config <- get_config()
  svc <- .mwaa$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mwaa$operations$untag_resource <- mwaa_untag_resource

#' Updates an Amazon Managed Workflows for Apache Airflow (MWAA)
#' environment
#'
#' @description
#' Updates an Amazon Managed Workflows for Apache Airflow (MWAA)
#' environment.
#'
#' @usage
#' mwaa_update_environment(AirflowConfigurationOptions, AirflowVersion,
#'   DagS3Path, EnvironmentClass, ExecutionRoleArn, LoggingConfiguration,
#'   MaxWorkers, MinWorkers, Name, NetworkConfiguration,
#'   PluginsS3ObjectVersion, PluginsS3Path, RequirementsS3ObjectVersion,
#'   RequirementsS3Path, Schedulers, SourceBucketArn,
#'   StartupScriptS3ObjectVersion, StartupScriptS3Path, WebserverAccessMode,
#'   WeeklyMaintenanceWindowStart)
#'
#' @param AirflowConfigurationOptions A list of key-value pairs containing the Apache Airflow configuration
#' options you want to attach to your environment. For more information,
#' see [Apache Airflow configuration
#' options](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html).
#' @param AirflowVersion The Apache Airflow version for your environment. To upgrade your
#' environment, specify a newer version of Apache Airflow supported by
#' Amazon MWAA.
#' 
#' Before you upgrade an environment, make sure your requirements, DAGs,
#' plugins, and other resources used in your workflows are compatible with
#' the new Apache Airflow version. For more information about updating your
#' resources, see [Upgrading an Amazon MWAA
#' environment](https://docs.aws.amazon.com/mwaa/latest/userguide/upgrading-environment.html).
#' 
#' Valid values: `1.10.12`, `2.0.2`, `2.2.2`, `2.4.3`, `2.5.1`, `2.6.3`,
#' `2.7.2`.
#' @param DagS3Path The relative path to the DAGs folder on your Amazon S3 bucket. For
#' example, `dags`. For more information, see [Adding or updating
#' DAGs](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html).
#' @param EnvironmentClass The environment class type. Valid values: `mw1.small`, `mw1.medium`,
#' `mw1.large`. For more information, see [Amazon MWAA environment
#' class](https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html).
#' @param ExecutionRoleArn The Amazon Resource Name (ARN) of the execution role in IAM that allows
#' MWAA to access Amazon Web Services resources in your environment. For
#' example, `arn:aws:iam::123456789:role/my-execution-role`. For more
#' information, see [Amazon MWAA Execution
#' role](https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html).
#' @param LoggingConfiguration The Apache Airflow log types to send to CloudWatch Logs.
#' @param MaxWorkers The maximum number of workers that you want to run in your environment.
#' MWAA scales the number of Apache Airflow workers up to the number you
#' specify in the `MaxWorkers` field. For example, `20`. When there are no
#' more tasks running, and no more in the queue, MWAA disposes of the extra
#' workers leaving the one worker that is included with your environment,
#' or the number you specify in `MinWorkers`.
#' @param MinWorkers The minimum number of workers that you want to run in your environment.
#' MWAA scales the number of Apache Airflow workers up to the number you
#' specify in the `MaxWorkers` field. When there are no more tasks running,
#' and no more in the queue, MWAA disposes of the extra workers leaving the
#' worker count you specify in the `MinWorkers` field. For example, `2`.
#' @param Name &#91;required&#93; The name of your Amazon MWAA environment. For example,
#' `MyMWAAEnvironment`.
#' @param NetworkConfiguration The VPC networking components used to secure and enable network traffic
#' between the Amazon Web Services resources for your environment. For more
#' information, see [About networking on Amazon
#' MWAA](https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html).
#' @param PluginsS3ObjectVersion The version of the plugins.zip file on your Amazon S3 bucket. You must
#' specify a version each time a `plugins.zip` file is updated. For more
#' information, see [How S3 Versioning
#' works](https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html).
#' @param PluginsS3Path The relative path to the `plugins.zip` file on your Amazon S3 bucket.
#' For example, `plugins.zip`. If specified, then the plugins.zip version
#' is required. For more information, see [Installing custom
#' plugins](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html).
#' @param RequirementsS3ObjectVersion The version of the requirements.txt file on your Amazon S3 bucket. You
#' must specify a version each time a `requirements.txt` file is updated.
#' For more information, see [How S3 Versioning
#' works](https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html).
#' @param RequirementsS3Path The relative path to the `requirements.txt` file on your Amazon S3
#' bucket. For example, `requirements.txt`. If specified, then a file
#' version is required. For more information, see [Installing Python
#' dependencies](https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html).
#' @param Schedulers The number of Apache Airflow schedulers to run in your Amazon MWAA
#' environment.
#' @param SourceBucketArn The Amazon Resource Name (ARN) of the Amazon S3 bucket where your DAG
#' code and supporting files are stored. For example,
#' `arn:aws:s3:::my-airflow-bucket-unique-name`. For more information, see
#' [Create an Amazon S3 bucket for Amazon
#' MWAA](https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html).
#' @param StartupScriptS3ObjectVersion The version of the startup shell script in your Amazon S3 bucket. You
#' must specify the [version
#' ID](https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html)
#' that Amazon S3 assigns to the file every time you update the script.
#' 
#' Version IDs are Unicode, UTF-8 encoded, URL-ready, opaque strings that
#' are no more than 1,024 bytes long. The following is an example:
#' 
#' `3sL4kqtJlcpXroDTDmJ+rmSpXd3dIbrHY+MTRCxf3vjVBH40Nr8X8gdRQBpUMLUo`
#' 
#' For more information, see [Using a startup
#' script](https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html).
#' @param StartupScriptS3Path The relative path to the startup shell script in your Amazon S3 bucket.
#' For example, `s3://mwaa-environment/startup.sh`.
#' 
#' Amazon MWAA runs the script as your environment starts, and before
#' running the Apache Airflow process. You can use this script to install
#' dependencies, modify Apache Airflow configuration options, and set
#' environment variables. For more information, see [Using a startup
#' script](https://docs.aws.amazon.com/mwaa/latest/userguide/using-startup-script.html).
#' @param WebserverAccessMode The Apache Airflow *Web server* access mode. For more information, see
#' [Apache Airflow access
#' modes](https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html).
#' @param WeeklyMaintenanceWindowStart The day and time of the week in Coordinated Universal Time (UTC) 24-hour
#' standard time to start weekly maintenance updates of your environment in
#' the following format: `DAY:HH:MM`. For example: `TUE:03:30`. You can
#' specify a start time in 30 minute increments only.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Arn = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$update_environment(
#'   AirflowConfigurationOptions = list(
#'     "string"
#'   ),
#'   AirflowVersion = "string",
#'   DagS3Path = "string",
#'   EnvironmentClass = "string",
#'   ExecutionRoleArn = "string",
#'   LoggingConfiguration = list(
#'     DagProcessingLogs = list(
#'       Enabled = TRUE|FALSE,
#'       LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
#'     ),
#'     SchedulerLogs = list(
#'       Enabled = TRUE|FALSE,
#'       LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
#'     ),
#'     TaskLogs = list(
#'       Enabled = TRUE|FALSE,
#'       LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
#'     ),
#'     WebserverLogs = list(
#'       Enabled = TRUE|FALSE,
#'       LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
#'     ),
#'     WorkerLogs = list(
#'       Enabled = TRUE|FALSE,
#'       LogLevel = "CRITICAL"|"ERROR"|"WARNING"|"INFO"|"DEBUG"
#'     )
#'   ),
#'   MaxWorkers = 123,
#'   MinWorkers = 123,
#'   Name = "string",
#'   NetworkConfiguration = list(
#'     SecurityGroupIds = list(
#'       "string"
#'     )
#'   ),
#'   PluginsS3ObjectVersion = "string",
#'   PluginsS3Path = "string",
#'   RequirementsS3ObjectVersion = "string",
#'   RequirementsS3Path = "string",
#'   Schedulers = 123,
#'   SourceBucketArn = "string",
#'   StartupScriptS3ObjectVersion = "string",
#'   StartupScriptS3Path = "string",
#'   WebserverAccessMode = "PRIVATE_ONLY"|"PUBLIC_ONLY",
#'   WeeklyMaintenanceWindowStart = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname mwaa_update_environment
#'
#' @aliases mwaa_update_environment
mwaa_update_environment <- function(AirflowConfigurationOptions = NULL, AirflowVersion = NULL, DagS3Path = NULL, EnvironmentClass = NULL, ExecutionRoleArn = NULL, LoggingConfiguration = NULL, MaxWorkers = NULL, MinWorkers = NULL, Name, NetworkConfiguration = NULL, PluginsS3ObjectVersion = NULL, PluginsS3Path = NULL, RequirementsS3ObjectVersion = NULL, RequirementsS3Path = NULL, Schedulers = NULL, SourceBucketArn = NULL, StartupScriptS3ObjectVersion = NULL, StartupScriptS3Path = NULL, WebserverAccessMode = NULL, WeeklyMaintenanceWindowStart = NULL) {
  op <- new_operation(
    name = "UpdateEnvironment",
    http_method = "PATCH",
    http_path = "/environments/{Name}",
    paginator = list()
  )
  input <- .mwaa$update_environment_input(AirflowConfigurationOptions = AirflowConfigurationOptions, AirflowVersion = AirflowVersion, DagS3Path = DagS3Path, EnvironmentClass = EnvironmentClass, ExecutionRoleArn = ExecutionRoleArn, LoggingConfiguration = LoggingConfiguration, MaxWorkers = MaxWorkers, MinWorkers = MinWorkers, Name = Name, NetworkConfiguration = NetworkConfiguration, PluginsS3ObjectVersion = PluginsS3ObjectVersion, PluginsS3Path = PluginsS3Path, RequirementsS3ObjectVersion = RequirementsS3ObjectVersion, RequirementsS3Path = RequirementsS3Path, Schedulers = Schedulers, SourceBucketArn = SourceBucketArn, StartupScriptS3ObjectVersion = StartupScriptS3ObjectVersion, StartupScriptS3Path = StartupScriptS3Path, WebserverAccessMode = WebserverAccessMode, WeeklyMaintenanceWindowStart = WeeklyMaintenanceWindowStart)
  output <- .mwaa$update_environment_output()
  config <- get_config()
  svc <- .mwaa$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.mwaa$operations$update_environment <- mwaa_update_environment
