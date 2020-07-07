context("general testing")

test_that("Errored as expected.", {
  expect_error(extract_thresholddata("Astring"))
})

test_that("Is numeric", {
  expect_that(data_audio$Runs, is.numeric())
})

test_that("Is numeric", {
  expect_that(data_audio$Thresholds, is.numeric())
})
