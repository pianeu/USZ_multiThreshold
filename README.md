
**USZ_multiThreshold** 

USZ_multiThreshold is an R package to extract and merge data created with the 
USZ supra-threshold test (STT) for peripheral hearing thresholds (threshold), 
temporal compresion (TC) and frequency selectivity (FS). It contains a function 
to read in a list of xls(x) files; transposing, cleaning and merging them into 
one single data frame. 

**Installation**

To install the package from github, devtools is needed. 

```r
devtools::install_github("pianeu/USZ_multiThreshold")
```

**Usage**

Load the package: 

```r
library(USZmultiThreshold)
```

Load your dataset: 

```r
example_data <- system.file("extdata","exdatathr.xls", package = "USZmultiThreshold")
##Call extract_thresholddata function
threshold_data <- extract_thresholddata(example_data)
head(threshold_data)
