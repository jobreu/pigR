#' @title Translate English sentences to Pig Latin
#' @description This function takes one or more English sentences as input and returns the Pig Latin translation. For the translation, this function uses the \href{https://en.wikipedia.org/wiki/Pig_Latin#Rules}{rules described in the Wikipedia article}.
#' @param sentence A string containing the English sentence(s) to be translated to Pig Latin.
#'
#' @return A string containing the Pig Latin translation of the input sentence(s). Words are converted to lowercase and punctuation is removed from the input sentence before translation.
#' @export
#'
#' @examples pig_sentence("I speak Pig Latin") ## returns "iway eakspay igpay atinlay"
#' @seealso [pig_word()] for translating individual words to Pig Latin.

pig_sentence <- function(sentence) {
  # Remove punctuation from the sentence
  sentence <- gsub("[[:punct:]]", "", sentence)

  # Split the sentence into words
  words <- unlist(strsplit(sentence, "\\s+"))

  # Translate each word into Pig Latin, converting to lowercase first
  translated_words <- sapply(words, function(word) pig_word(tolower(word)))

  # Combine the translated words back into a sentence
  return(paste(translated_words, collapse = " "))
}
