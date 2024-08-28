library(pigR)

test_that("pig_word works correctly", {
  expect_equal(pig_word("banana"), "ananabay")
  expect_equal(pig_word("smile"), "ilesmay")
})
