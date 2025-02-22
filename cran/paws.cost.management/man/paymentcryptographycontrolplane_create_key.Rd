% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paymentcryptographycontrolplane_operations.R
\name{paymentcryptographycontrolplane_create_key}
\alias{paymentcryptographycontrolplane_create_key}
\title{Creates an Amazon Web Services Payment Cryptography key, a logical
representation of a cryptographic key, that is unique in your account
and Amazon Web Services Region}
\usage{
paymentcryptographycontrolplane_create_key(
  Enabled = NULL,
  Exportable,
  KeyAttributes,
  KeyCheckValueAlgorithm = NULL,
  Tags = NULL
)
}
\arguments{
\item{Enabled}{Specifies whether to enable the key. If the key is enabled, it is
activated for use within the service. If the key not enabled, then it is
created but not activated. The default value is enabled.}

\item{Exportable}{[required] Specifies whether the key is exportable from the service.}

\item{KeyAttributes}{[required] The role of the key, the algorithm it supports, and the cryptographic
operations allowed with the key. This data is immutable after the key is
created.}

\item{KeyCheckValueAlgorithm}{The algorithm that Amazon Web Services Payment Cryptography uses to
calculate the key check value (KCV) for DES and AES keys.

For DES key, the KCV is computed by encrypting 8 bytes, each with value
'00', with the key to be checked and retaining the 3 highest order bytes
of the encrypted result. For AES key, the KCV is computed by encrypting
8 bytes, each with value '01', with the key to be checked and retaining
the 3 highest order bytes of the encrypted result.}

\item{Tags}{The tags to attach to the key. Each tag consists of a tag key and a tag
value. Both the tag key and the tag value are required, but the tag
value can be an empty (null) string. You can't have more than one tag on
an Amazon Web Services Payment Cryptography key with the same tag key.

To use this parameter, you must have
\code{\link[=paymentcryptographycontrolplane_tag_resource]{tag_resource}}
permission.

Don't include confidential or sensitive information in this field. This
field may be displayed in plaintext in CloudTrail logs and other output.

Tagging or untagging an Amazon Web Services Payment Cryptography key can
allow or deny permission to the key.}
}
\description{
Creates an Amazon Web Services Payment Cryptography key, a logical representation of a cryptographic key, that is unique in your account and Amazon Web Services Region. You use keys for cryptographic functions such as encryption and decryption.

See \url{https://www.paws-r-sdk.com/docs/paymentcryptographycontrolplane_create_key/} for full documentation.
}
\keyword{internal}
