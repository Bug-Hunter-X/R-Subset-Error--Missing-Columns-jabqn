```r
# This code attempts to subset a data frame using a character vector of column names,
# but it fails if any of the specified column names are not present in the data frame.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "D", "B")
subset_df <- df[, cols_to_select]

# This will result in an error because column "D" does not exist.
print(subset_df)
```