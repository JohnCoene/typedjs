[![Travis-CI Build Status](https://travis-ci.org/JohnCoene/typed.svg?branch=master)](https://travis-ci.org/JohnCoene/typed)
[![saythanks](https://img.shields.io/badge/say-thanks-ff69b4.svg)](https://saythanks.io/to/JohnCoene)

![countup](http://johncoene.github.io/projects/img/modals/typed.gif)

# typed

R implementation of [typed.js](https://github.com/mattboldt/typed.js/) for Rmarkdown.

## Installation

```R
# install.packages("devtools")
devtools::install_github("JohnCoene/typed")
```

## Example

```R
typed("Hello")
typed("Emphasis word <span style ='color: red;'>with html</span>.", contentType = "html")
typed(c("First sentence.", "Second sentence", typeSpeed = 2))
```

## Waypoints

The htmlwidget uses jQuery waypoints.js to trigger the typing, see `offset` argument.

---------------------------------------------------------

See [my other projects](http://johncoene.github.io/projects/)
