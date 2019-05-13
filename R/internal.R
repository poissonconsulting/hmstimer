as_hms <- function(x) {
  x <- as.difftime(x, units = "secs")
  class(x) <- c("hms", "difftime")
  x
}
