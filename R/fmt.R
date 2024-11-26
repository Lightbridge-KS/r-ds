library(lubridate)


#' Format Date Custom
#'
#' This function formats a date input into a Date object. It handles inputs of class "POSIXt" and character strings.
#'
#' @param x A date input which can be of class "POSIXt" or a character string.
#' @return A Date object if the input is of class "POSIXt" or a character string representing a date. Returns NA for other input types.
#' @importFrom lubridate as_date dmy
#' @examples
#' fmt_date_custom(Sys.time()) # POSIXt input
#' fmt_date_custom("31-12-2020") # Character input
#' fmt_date_custom(12345) # Invalid input
#' @export
fmt_date_custom <- function(x) {
    out <- if (inherits(x, "POSIXt")) {
        lubridate::as_date(x)
    } else if (is.character(x)) {
        dmy(x)
    } else {
        NA
    }
    out
}