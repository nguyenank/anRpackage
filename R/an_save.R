#' Wrapper for ggsave with some defaults.
#'
#' @param filename filename to save the file to
#' @param shape options: "square", "hrect", "vrect"; default = "sqaure"
#'
#' @return nothing; saves a file at the specified filepath
#' @export
#'
#' @examples
#' an_save("test.png")
#' an_save("test.png", shape = "hrect")
an_save <- function(filename, shape = "square") {
  ggplot2::ggsave(filename = filename, bg = "white",
                  height = ifelse(shape == "vrect", 8, 6),
                  width = ifelse(shape == "hrect", 8, 6))
}
