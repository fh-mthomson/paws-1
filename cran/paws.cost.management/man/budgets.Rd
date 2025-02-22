% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/budgets_service.R
\name{budgets}
\alias{budgets}
\title{AWS Budgets}
\usage{
budgets(config = list(), credentials = list(), endpoint = NULL, region = NULL)
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
Use the Amazon Web Services Budgets API to plan your service usage,
service costs, and instance reservations. This API reference provides
descriptions, syntax, and usage examples for each of the actions and
data types for the Amazon Web Services Budgets feature.

Budgets provide you with a way to see the following information:
\itemize{
\item How close your plan is to your budgeted amount or to the free tier
limits
\item Your usage-to-date, including how much you've used of your Reserved
Instances (RIs)
\item Your current estimated charges from Amazon Web Services, and how
much your predicted usage will accrue in charges by the end of the
month
\item How much of your budget has been used
}

Amazon Web Services updates your budget status several times a day.
Budgets track your unblended costs, subscriptions, refunds, and RIs. You
can create the following types of budgets:
\itemize{
\item \strong{Cost budgets} - Plan how much you want to spend on a service.
\item \strong{Usage budgets} - Plan how much you want to use one or more
services.
\item \strong{RI utilization budgets} - Define a utilization threshold, and
receive alerts when your RI usage falls below that threshold. This
lets you see if your RIs are unused or under-utilized.
\item \strong{RI coverage budgets} - Define a coverage threshold, and receive
alerts when the number of your instance hours that are covered by
RIs fall below that threshold. This lets you see how much of your
instance usage is covered by a reservation.
}

Service Endpoint

The Amazon Web Services Budgets API provides the following endpoint:
\itemize{
\item https://budgets.amazonaws.com
}

For information about costs that are associated with the Amazon Web
Services Budgets API, see \href{https://aws.amazon.com/aws-cost-management/}{Amazon Web Services Cost Management Pricing}.
}
\section{Service syntax}{


\if{html}{\out{<div class="sourceCode">}}\preformatted{svc <- budgets(
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
\link[=budgets_create_budget]{create_budget} \tab Creates a budget and, if included, notifications and subscribers\cr
\link[=budgets_create_budget_action]{create_budget_action} \tab Creates a budget action\cr
\link[=budgets_create_notification]{create_notification} \tab Creates a notification\cr
\link[=budgets_create_subscriber]{create_subscriber} \tab Creates a subscriber\cr
\link[=budgets_delete_budget]{delete_budget} \tab Deletes a budget\cr
\link[=budgets_delete_budget_action]{delete_budget_action} \tab Deletes a budget action\cr
\link[=budgets_delete_notification]{delete_notification} \tab Deletes a notification\cr
\link[=budgets_delete_subscriber]{delete_subscriber} \tab Deletes a subscriber\cr
\link[=budgets_describe_budget]{describe_budget} \tab Describes a budget\cr
\link[=budgets_describe_budget_action]{describe_budget_action} \tab Describes a budget action detail\cr
\link[=budgets_describe_budget_action_histories]{describe_budget_action_histories} \tab Describes a budget action history detail\cr
\link[=budgets_describe_budget_actions_for_account]{describe_budget_actions_for_account} \tab Describes all of the budget actions for an account\cr
\link[=budgets_describe_budget_actions_for_budget]{describe_budget_actions_for_budget} \tab Describes all of the budget actions for a budget\cr
\link[=budgets_describe_budget_notifications_for_account]{describe_budget_notifications_for_account} \tab Lists the budget names and notifications that are associated with an account\cr
\link[=budgets_describe_budget_performance_history]{describe_budget_performance_history} \tab Describes the history for DAILY, MONTHLY, and QUARTERLY budgets\cr
\link[=budgets_describe_budgets]{describe_budgets} \tab Lists the budgets that are associated with an account\cr
\link[=budgets_describe_notifications_for_budget]{describe_notifications_for_budget} \tab Lists the notifications that are associated with a budget\cr
\link[=budgets_describe_subscribers_for_notification]{describe_subscribers_for_notification} \tab Lists the subscribers that are associated with a notification\cr
\link[=budgets_execute_budget_action]{execute_budget_action} \tab Executes a budget action\cr
\link[=budgets_update_budget]{update_budget} \tab Updates a budget\cr
\link[=budgets_update_budget_action]{update_budget_action} \tab Updates a budget action\cr
\link[=budgets_update_notification]{update_notification} \tab Updates a notification\cr
\link[=budgets_update_subscriber]{update_subscriber} \tab Updates a subscriber
}
}

\examples{
\dontrun{
svc <- budgets()
svc$create_budget(
  Foo = 123
)
}

}
