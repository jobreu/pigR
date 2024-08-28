library(pigR)

test_that("pig_sentence works correctly", {
  expect_equal(pig_sentence("Hello, world!"), "ellohay orldway")
})
