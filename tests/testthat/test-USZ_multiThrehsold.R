context("general testing")

test_that("Errored as expected.", {
  expect_error(extract_thresholddata("stringinput"))
})


example_data_path <- system.file("extdata","exdatathr.xls", package = "USZmultiThreshold", mustWork = T)
threshold_data <- extract_thresholddata(example_data_path)

test_that("Is numeric", {
  expect_that(is.numeric(threshold_data$Runs), is_true())
})

test_that("Is numeric", {
  expect_that(is.numeric(threshold_data$Runs), is_true())
})

test_that("Is character", {
  expect_that(is.character(threshold_data$name), is_true())
})

