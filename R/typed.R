#' type
#'
#' jQuery plugin that types.
#'
#' @param strings Sentences to type, must be character vector.
#' @param contentType Content type, defaults to \code{html} can also be set to \code{text}.
#' @param ... Any other options from \url{https://github.com/mattboldt/typed.js/#customization}.
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param elementId Use specific element id.
#'
#' @examples
#' \dontrun{
#' typed(c("Hello", "world"))
#' typed("Emphasis word <span style ='color: red;'>with html</span>.",
#'       contentType = "html")
#' typed(c("First sentence.", "Second sentence"), typeSpeed = 2)
#' }
#'
#' @import htmlwidgets
#'
#' @export
typed <- function(strings, ..., contentType = 'html',
                  width = NULL, height = NULL, elementId = NULL) {

  if(missing(strings)) stop("must pass strings")

  # forward options using x

  x <- list(
    strings = as.list(strings),
    contentType = contentType,
    ...
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'typed',
    x,
    width = width,
    height = height,
    package = 'typed',
    elementId = elementId
  )
}

typed_html <- function(id, style, class, ...){
  htmltools::tags$span(id = id, class = class)
}

#' Shiny bindings for typed
#'
#' Output and render functions for using typed within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a typed
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name typed-shiny
#'
#' @export
typedOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'typed', width, height, package = 'typed')
}

#' @rdname typed-shiny
#' @export
renderTyped <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, typedOutput, env, quoted = TRUE)
}
