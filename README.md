[![Travis-CI Build Status](https://travis-ci.org/JohnCoene/typed.svg?branch=master)](https://travis-ci.org/JohnCoene/typed)
[![saythanks](https://img.shields.io/badge/say-thanks-ff69b4.svg)](https://saythanks.io/to/JohnCoene)

# typed

R implementation of [typed.js](https://github.com/mattboldt/typed.js/) for Rmarkdown.

## Installation

```r
# install.packages("devtools")
devtools::install_github("JohnCoene/typed")
```

## Example

```r
typed("Hello")
typed("Emphasis word <span style ='color: red;'>with html</span>.", contentType = "html")
typed(c("First sentence.", "Second sentence"), typeSpeed = 2)
```

