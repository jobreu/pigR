# pigR
A simple R package for translating English to Pig Latin :pig:
<img src="man/img/pigR_logo.png" align="right" alt="pigR logo" width="120">

This package is a simple implementation of the Pig Latin translation algorithm in R. Pig Latin is a language game that involves altering English words according to a simple set of rules. The rules used by this package are described in the [Pig Latin Wikipedia entry](https://en.wikipedia.org/wiki/Pig_Latin#Rules).

The package includes two simple functions for translating English words or sentences/strings to Pig Latin:
`pig_word()` and `pig_sentence()`.

## 1) Installation

```R
 # GitHub version
 library(remotes)
 remotes::install_github("jobreu/pigR")
```

## 2) Usage

```R
library(pigR)

# Translate a single word
pig_word("encoding")

# Translate a sentence
pig_sentence("I saved latin! What did you ever do?")
``` 
