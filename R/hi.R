#' Help start conversations
#'
#' This function generates some helpful text that can be used to start
#' conversations in all kinds of awkward social situations.
#'
#' @param who character(1) The name of the person you wish to start a
#'     conversation with.
#'
#' @param how character(1) How to greet the conversant. Either "shout" (default)
#'     or "whisper".
#'
#' @return character(1) A line of text to be used when starting conversations.
#'
#' @examples
#' hi("Martin Morgan")
#' hi("Martin Morgan", "whisper")
#'
#' @export
hi <- function(who, how=c("shout", "whisper")) {
    stopifnot(is_scalar_character(who))
    how <- match.arg(how)
    fun <- switch(how, shout=shout, whisper=whisper)
    paste("hello", fun(who),  "you have", nchar(who), "letters in your name!")
}

shout <- function(who) {
    toupper(who)
}

whisper <- function(who) {
    tolower(who)
}
