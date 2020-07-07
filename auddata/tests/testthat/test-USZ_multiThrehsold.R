context("general testing")

test_that("Errored as expected.", {
  expect_error(extract_thresholddata("Astring"))
})

aud_filelist <- system.file(..., package = "base", lib.loc = NULL, mustWork = FALSE)(path = "/home/neuschwanderp/Desktop/Docs/R/gitHub/USZ_multiThreshold/auddata/ex_data/", full.names = TRUE, recursive = TRUE)

threshold_data <- extract_thresholddata(aud_filelist)


test_that("Is numeric", {
  expect_that(threshold_data$Runs, is.numeric())
})

test_that("Is numeric", {
  expect_that(threshold_data$Thresholds, is.numeric())
})
