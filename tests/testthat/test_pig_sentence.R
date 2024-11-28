library(pigR)

test_that("pig_sentence works correctly", {
  expect_equal(pig_sentence("Hello, world!"), "ellohay orldway")
  expect_equal(pig_sentence("I speak Pig Latin"), "iway eakspay igpay atinlay")
  expect_equal(pig_sentence("This is a test."), "isthay isway away esttay")
  expect_equal(pig_sentence("Mixed CASE sentence."), "ixedmay asecay entencesay")
  expect_equal(pig_sentence("Punctuation, should be removed!"), "unctuationpay ouldshay ebay emovedray")
  expect_equal(pig_sentence("No vowels here"), "onay owelsvay erehay")
})
