% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cognitoidentityprovider_operations.R
\name{cognitoidentityprovider_admin_set_user_password}
\alias{cognitoidentityprovider_admin_set_user_password}
\title{Sets the specified user's password in a user pool as an administrator}
\usage{
cognitoidentityprovider_admin_set_user_password(
  UserPoolId,
  Username,
  Password,
  Permanent = NULL
)
}
\arguments{
\item{UserPoolId}{[required] The user pool ID for the user pool where you want to set the user's
password.}

\item{Username}{[required] The user name of the user whose password you want to set.}

\item{Password}{[required] The password for the user.}

\item{Permanent}{\code{True} if the password is permanent, \code{False} if it is temporary.}
}
\description{
Sets the specified user's password in a user pool as an administrator. Works on any user.

See \url{https://www.paws-r-sdk.com/docs/cognitoidentityprovider_admin_set_user_password/} for full documentation.
}
\keyword{internal}
