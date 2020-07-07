**USZ_multiThreshold** 

USZ_multiThreshold is an R package to extract and merge data created with the USZ supra-threshold test (STT) for peripheral hearing thresholds (threshold), temporal compresion (TMC) and frequency selectivity (FS). It contains a function to read in a list of xls(x) files; transposing, cleaning and merging them into one single data frame. 

**Installation**

To install the packaged from github, devtools is needed. 

```r
devtools::install_github("pianeu/USZ_multiThreshold", subdir="auddata")
```
**Usage**

Load the package: 
```r
library(auddata)
```

Load your dataset: 

```r
file_list <- list.files(path = "/pathtoyourdata", full.names = TRUE, recursive = TRUE)


##Call threshold_data function¨

threshold_data <- extract_thresholddata(file_list)


```

