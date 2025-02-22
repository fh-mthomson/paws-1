% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/imagebuilder_operations.R
\name{imagebuilder_create_image}
\alias{imagebuilder_create_image}
\title{Creates a new image}
\usage{
imagebuilder_create_image(
  imageRecipeArn = NULL,
  containerRecipeArn = NULL,
  distributionConfigurationArn = NULL,
  infrastructureConfigurationArn,
  imageTestsConfiguration = NULL,
  enhancedImageMetadataEnabled = NULL,
  tags = NULL,
  clientToken,
  imageScanningConfiguration = NULL
)
}
\arguments{
\item{imageRecipeArn}{The Amazon Resource Name (ARN) of the image recipe that defines how
images are configured, tested, and assessed.}

\item{containerRecipeArn}{The Amazon Resource Name (ARN) of the container recipe that defines how
images are configured and tested.}

\item{distributionConfigurationArn}{The Amazon Resource Name (ARN) of the distribution configuration that
defines and configures the outputs of your pipeline.}

\item{infrastructureConfigurationArn}{[required] The Amazon Resource Name (ARN) of the infrastructure configuration that
defines the environment in which your image will be built and tested.}

\item{imageTestsConfiguration}{The image tests configuration of the image.}

\item{enhancedImageMetadataEnabled}{Collects additional information about the image being created, including
the operating system (OS) version and package list. This information is
used to enhance the overall experience of using EC2 Image Builder.
Enabled by default.}

\item{tags}{The tags of the image.}

\item{clientToken}{[required] The idempotency token used to make this request idempotent.}

\item{imageScanningConfiguration}{Contains settings for vulnerability scans.}
}
\description{
Creates a new image. This request will create a new image along with all of the configured output resources defined in the distribution configuration. You must specify exactly one recipe for your image, using either a ContainerRecipeArn or an ImageRecipeArn.

See \url{https://www.paws-r-sdk.com/docs/imagebuilder_create_image/} for full documentation.
}
\keyword{internal}
