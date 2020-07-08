**Functional specification, High risk**  
ID: #2  
Read in auditory threshold data from USZ multiThreshold test battery into R and convert it into one dataframe  
Change date: 2020-07-08T12:17:34Z  
Creation date: 2020-07-08T11:36:50Z  
Weblink: https://github.com/pianeu/USZ_multiThreshold_validation/issues/2  
**Description:**  
An auditory threshold data import from the USZ multiThreshold test battery contains data from several participants and lists them in a single list file. The data is then transposed and only the relevant variables are extracted before the files are merged into a single data frame. 

The threshold data of the participants are provided via xls(x) files and read with the function [extract_thresholddata](https://github.com/pianeu/USZ_multiThreshold/blob/master/auddata/R/extract_thresholddata.R).

**Risk assessment:**
For each select one of: 1 = low, 2 = medium, 3 = high
Explain each selection briefly.
**Severity**: 3; If there is an error during data reading, all downstream processes are compromised.
**Probability**: 1; Because the xls(x) files to read are created with a matlab function through data export within the USZ multiThreshold test battery all xls(x) files should show the same basic structure. Therefore, the risk for importing problems is low. 

**Linkage to related documents:**  
User requirement: #1  
Test: 



---
