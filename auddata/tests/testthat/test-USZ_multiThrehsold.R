context("general testing")

test_that("Errored as expected.", {
  expect_error(extract_thresholddata("stringinput"))
})

#aud_filelist <- system.file("Summary_0bsr6v EAR Thr 25-Jul-2018 13_15_41", package = "auddata", lib.loc = NULL, mustWork = FALSE)
#threshold_data <- extract_thresholddata(aud_filelist)

aud_filelist <- list.files(path = "/home/neuschwanderp/Desktop/Docs/R/gitHub/USZ_multiThreshold/auddata/ex_data/", full.names = TRUE, recursive = TRUE)
threshold_data <- extract_thresholddata(aud_filelist)

test_that("Is numeric", {
  expect_that(is.numeric(threshold_data$Runs), is_true())
})

test_that("Is numeric", {
  expect_that(is.numeric(threshold_data$Runs), is_true())
})

test_that("Is character", {
  expect_that(is.character(threshold_data$name), is_true())
})

