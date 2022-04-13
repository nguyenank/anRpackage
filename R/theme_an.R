#' Personal theme.
#'
#' @return ggplot2 theme object
#' @export
#'
#' @examples
#' theme_an()
theme_an <- function() {
  ggplot2::theme_void() +
    ggplot2::theme(
      text = ggplot2::element_text(family = "Public Sans"),
      plot.title = ggplot2::element_text(face = "bold", hjust = 0.5),
      plot.title.position = "plot",
      plot.subtitle = ggplot2::element_text(hjust = 0.5),
      plot.caption = ggplot2::element_text(face = "italic", size = 9, hjust = 0.5),
      plot.caption.position = "plot",
      legend.title = ggplot2::element_text(face = "bold"),
    )
}
