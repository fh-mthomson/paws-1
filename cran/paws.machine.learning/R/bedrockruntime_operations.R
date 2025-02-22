# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include bedrockruntime_service.R
NULL

#' Invokes the specified Bedrock model to run inference using the input
#' provided in the request body
#'
#' @description
#' Invokes the specified Bedrock model to run inference using the input provided in the request body. You use InvokeModel to run inference for text models, image models, and embedding models.
#'
#' See [https://www.paws-r-sdk.com/docs/bedrockruntime_invoke_model/](https://www.paws-r-sdk.com/docs/bedrockruntime_invoke_model/) for full documentation.
#'
#' @param accept The desired MIME type of the inference body in the response. The default
#' value is `application/json`.
#' @param body &#91;required&#93; Input data in the format specified in the content-type request header.
#' To see the format and content of this field for different models, refer
#' to [Inference
#' parameters](https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html).
#' @param contentType The MIME type of the input data in the request. The default value is
#' `application/json`.
#' @param modelId &#91;required&#93; Identifier of the model.
#'
#' @keywords internal
#'
#' @rdname bedrockruntime_invoke_model
bedrockruntime_invoke_model <- function(accept = NULL, body, contentType = NULL, modelId) {
  op <- new_operation(
    name = "InvokeModel",
    http_method = "POST",
    http_path = "/model/{modelId}/invoke",
    paginator = list()
  )
  input <- .bedrockruntime$invoke_model_input(accept = accept, body = body, contentType = contentType, modelId = modelId)
  output <- .bedrockruntime$invoke_model_output()
  config <- get_config()
  svc <- .bedrockruntime$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.bedrockruntime$operations$invoke_model <- bedrockruntime_invoke_model

#' Invoke the specified Bedrock model to run inference using the input
#' provided
#'
#' @description
#' Invoke the specified Bedrock model to run inference using the input provided. Return the response in a stream.
#'
#' See [https://www.paws-r-sdk.com/docs/bedrockruntime_invoke_model_with_response_stream/](https://www.paws-r-sdk.com/docs/bedrockruntime_invoke_model_with_response_stream/) for full documentation.
#'
#' @param accept The desired MIME type of the inference body in the response. The default
#' value is `application/json`.
#' @param body &#91;required&#93; Inference input in the format specified by the content-type. To see the
#' format and content of this field for different models, refer to
#' [Inference
#' parameters](https://docs.aws.amazon.com/bedrock/latest/userguide/model-parameters.html).
#' @param contentType The MIME type of the input data in the request. The default value is
#' `application/json`.
#' @param modelId &#91;required&#93; Id of the model to invoke using the streaming request.
#'
#' @keywords internal
#'
#' @rdname bedrockruntime_invoke_model_with_response_stream
bedrockruntime_invoke_model_with_response_stream <- function(accept = NULL, body, contentType = NULL, modelId) {
  op <- new_operation(
    name = "InvokeModelWithResponseStream",
    http_method = "POST",
    http_path = "/model/{modelId}/invoke-with-response-stream",
    paginator = list()
  )
  input <- .bedrockruntime$invoke_model_with_response_stream_input(accept = accept, body = body, contentType = contentType, modelId = modelId)
  output <- .bedrockruntime$invoke_model_with_response_stream_output()
  config <- get_config()
  svc <- .bedrockruntime$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.bedrockruntime$operations$invoke_model_with_response_stream <- bedrockruntime_invoke_model_with_response_stream
