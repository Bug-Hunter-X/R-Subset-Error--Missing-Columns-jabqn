```r
# This improved code handles cases where specified column names might be missing.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "D", "B")

# Use intersect to only select columns that exist in the data frame
cols_present <- intersect(cols_to_select, colnames(df))
subset_df <- df[, cols_present, drop = FALSE]

# Print the subset data frame; no error is thrown even if some columns are missing.
print(subset_df)
```