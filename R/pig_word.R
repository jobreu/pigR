#' @title Translate English words to Pig Latin
#' @description This function takes an English word as input and returns the Pig Latin translation of the word. For the translation, this function uses the \href{https://en.wikipedia.org/wiki/Pig_Latin#Rules}{rules described in the Wikipedia article}.
#' @param word A string containing the English word to be translated to Pig Latin.
#'
#' @return A string containing the Pig Latin translation of the input word. Words are converted to lowercase before translation.
#' @export
#'
#' @examples pig_word("latin") ## returns "atinlay"
#' @seealso [pig_sentence()] for translating entire sentences to Pig Latin.

pig_word <- function(word) {
  word <- tolower(word)  # Convert the word to lowercase
  vowels <- c("a", "e", "i", "o", "u")

  # Check if the first letter is a vowel
  if (substr(word, 1, 1) %in% vowels) {
    return(paste0(word, "way"))
  } else {
    # Find the first vowel in the word
    first_vowel_pos <- regexpr("[aeiou]", word)

    if (first_vowel_pos == -1) {
      # No vowels found, return the word with "ay" appended
      return(paste0(word, "ay"))
    } else if (first_vowel_pos == 1) {
      # Special case for words starting with a vowel
      return(paste0(word, "way"))
    } else {
      # Split the word at the first vowel
      prefix <- substr(word, 1, first_vowel_pos - 1)
      suffix <- substr(word, first_vowel_pos, nchar(word))

      # Construct the Pig Latin word
      return(paste0(suffix, prefix, "ay"))
    }
  }
}
