library(pigR)

test_that("pig_word works correctly", {
  expect_equal(pig_word("banana"), "ananabay")
  expect_equal(pig_word("smile"), "ilesmay")
  expect_equal(pig_word("Apple"), "appleway")
  expect_equal(pig_word("STRONG"), "ongstray")
  expect_equal(pig_word("rhythm"), "rhythmay")
  expect_equal(pig_word("sky"), "skyay")
})
