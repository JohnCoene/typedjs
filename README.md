# typed

R implementation of [typed.js](https://github.com/mattboldt/typed.js/) for Rmarkdown.

## Installation

```r
# install.packages("remotes")
remotes::install_github("JohnCoene/typedjs")
```

## Example

```r
library(typedjs)

typed("Hello")
typed(
	"Emphasis word <span style ='color: red;'>with html</span>.",
	contentType = "html"
)
typed(
	list(
		shiny::h3("First sentence."), 
		shiny::h4("Second sentence")
	), 
	typeSpeed = 2
)
```

