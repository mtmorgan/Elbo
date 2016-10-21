#' Test that argument is a scalar character
#' 
#' @param x character(1)
#' 
#' @return logical(1)
is_scalar_character <- function(x) {
    is.character(x) && length(x) == 1 && 
        !is.na(x) && nzchar(x)
}