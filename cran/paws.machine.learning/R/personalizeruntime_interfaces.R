# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common populate
#' @include personalizeruntime_service.R
NULL

.personalizeruntime$get_personalized_ranking_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(campaignArn = structure(logical(0), tags = list(type = "string")), inputList = structure(list(structure(logical(0), tags = list(type = "string"))), tags = list(type = "list")), userId = structure(logical(0), tags = list(type = "string")), context = structure(list(structure(logical(0), tags = list(type = "string", sensitive = TRUE))), tags = list(type = "map")), filterArn = structure(logical(0), tags = list(type = "string")), filterValues = structure(list(structure(logical(0), tags = list(type = "string", sensitive = TRUE))), tags = list(type = "map"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.personalizeruntime$get_personalized_ranking_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(personalizedRanking = structure(list(structure(list(itemId = structure(logical(0), tags = list(type = "string")), score = structure(logical(0), tags = list(type = "double")), promotionName = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list")), recommendationId = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.personalizeruntime$get_recommendations_input <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(campaignArn = structure(logical(0), tags = list(type = "string")), itemId = structure(logical(0), tags = list(type = "string")), userId = structure(logical(0), tags = list(type = "string")), numResults = structure(logical(0), tags = list(type = "integer")), context = structure(list(structure(logical(0), tags = list(type = "string", sensitive = TRUE))), tags = list(type = "map")), filterArn = structure(logical(0), tags = list(type = "string")), filterValues = structure(list(structure(logical(0), tags = list(type = "string", sensitive = TRUE))), tags = list(type = "map")), recommenderArn = structure(logical(0), tags = list(type = "string")), promotions = structure(list(structure(list(name = structure(logical(0), tags = list(type = "string")), percentPromotedItems = structure(logical(0), tags = list(type = "integer")), filterArn = structure(logical(0), tags = list(type = "string")), filterValues = structure(list(structure(logical(0), tags = list(type = "string", sensitive = TRUE))), tags = list(type = "map"))), tags = list(type = "structure"))), tags = list(type = "list"))), tags = list(type = "structure"))
  return(populate(args, shape))
}

.personalizeruntime$get_recommendations_output <- function(...) {
  args <- c(as.list(environment()), list(...))
  shape <- structure(list(itemList = structure(list(structure(list(itemId = structure(logical(0), tags = list(type = "string")), score = structure(logical(0), tags = list(type = "double")), promotionName = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))), tags = list(type = "list")), recommendationId = structure(logical(0), tags = list(type = "string"))), tags = list(type = "structure"))
  return(populate(args, shape))
}
