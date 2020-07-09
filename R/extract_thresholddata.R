#' A function which extracts tresholdData that was measured with USZ_STT
#'
#' This function allows to read in, transpose and clean auditory
#' threshold data (xlsx format) from multiple
#' participants and converts it into a single dataframe
#' @param list_datafiles A list with xls(x) files
#' @keywords data extraction, merging
#' @export
#' @examples
#' example_data_path <- system.file("extdata","exdatathr.xls", package = "USZmultiThreshold", mustWork = T)
#' threshold_data <- extract_thresholddata(example_data_path)
#' head(threshold_data)
extract_thresholddata <- function(list_datafiles) {
      library(xlsx)
      library(tidyverse)
      audiodata <- lapply(list_datafiles, read.xlsx, "Tabelle1", rowIndex = c(5, 11:20), colIndex = 1:8,
                          header = FALSE, stringsAsFactors = FALSE)
      tdf <- list()
      for (i in 1:length(list_datafiles)) {
        tdf[[i]] <- as_tibble(t(audiodata[[i]][1:11, 2:length(audiodata[[i]])]))
        colnames(tdf[[i]]) <- t(audiodata[[i]]$X1)
        tdf[[i]]$name <- tdf[[i]]$name[1]
        tdf[[i]]$Runs <- as.numeric(as.character(tdf[[i]]$Runs))
        tdf[[i]]$targetFrequency <- as.numeric(as.character(tdf[[i]]$targetFrequency))
        tdf[[i]]$targetDuration <- as.numeric(as.character(tdf[[i]]$targetDuration))
        tdf[[i]]$Thresholds <- as.numeric(as.character(tdf[[i]]$Thresholds))
        tdf[[i]]$`Catch trials` <- as.numeric(as.character(tdf[[i]]$`Catch trials`))
        tdf[[i]]$`Caught Out` <- as.numeric(as.character(tdf[[i]]$`Caught Out`))
        tdf[[i]]$Observations <- as.numeric(as.character(tdf[[i]]$Observations))
        tdf[[i]]$Repeats <- as.numeric(as.character(tdf[[i]]$Repeats))
        tdf[[i]]$`% Percent Catch Trials` <- as.numeric(as.character(tdf[[i]]$`% Percent Catch Trials`))
        tdf[[i]]$`% Percent Caught out during Catch trials` <- as.numeric(as.character(tdf[[i]]$`% Percent Caught out during Catch trials`))
      }
      data_audio <- bind_rows(tdf)
      return(data_audio)
}
