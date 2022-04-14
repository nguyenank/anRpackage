#' Personal theme.
#'
#' @param axes whether to include axes or not
#'
#' @return ggplot2 theme object
#' @export
#'
#' @examples
#' theme_an()
theme_an <- function(axes = TRUE) {
  sysfonts::font_add_google("Public Sans", "public_sans")
  showtext::showtext_auto()

  base <- ggplot2::theme_void() +
    ggplot2::theme(
      text = ggplot2::element_text(family = "public_sans"),
      plot.title = ggplot2::element_text(face = "bold", hjust = 0.5),
      plot.title.position = "plot",
      plot.subtitle = ggplot2::element_text(hjust = 0.5),
      plot.caption = ggplot2::element_text(
        face = "italic",
        size = 9,
        hjust = 0.5,
        margin = ggplot2::margin(t = 1.5, r = 0, b = 0, l = 0, "char")
      ),
      plot.caption.position = "plot",
      plot.margin = ggplot2::margin(t = 1, r = 1, b = 1, l = 1, "char"),
      legend.title = ggplot2::element_text(face = "bold"),
    )

  if (axes) {
    base <- base +
      ggplot2::theme(
        axis.line = ggplot2::element_line(color = "#555555", lineend = "round"),
        axis.text.x = ggplot2::element_text(margin = ggplot2::margin(t = 0.3, unit = "char")),
        axis.text.y = ggplot2::element_text(margin = ggplot2::margin(r = 0.3, unit = "char")),
        axis.title = ggplot2::element_text(face = "bold"),
        axis.ticks = ggplot2::element_line(color = "#555555"),
        axis.ticks.length = ggplot2::unit(0.35, "char"),
        axis.title.y = ggplot2::element_text(angle = 90, margin = ggplot2::margin(r = 0.75, unit = "char")),
        axis.title.x = ggplot2::element_text(margin = ggplot2::margin(t = 0.75, unit = "char")),
      )
  }

  base
}
