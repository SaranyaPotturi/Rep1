print("HI BYE")
library(reshape2)
# Sample Long Data Frame
df_long <- data.frame(
  id = c(1, 1, 2, 2, 3, 3),
  treatment = c("A", "B", "A", "B", "A", "B"),
  value = c(5, 3, 6, 2, 7, 4)
)
df_wide <- dcast(df_long, id ~ treatment, value.var = "value")
print(df_wide)
df_long_dup <- data.frame(
  id = c(1, 1, 2, 2, 3, 3, 1, 1),
  treatment = c("A", "B", "A", "B", "A", "B", "A", "B"),
  value = c(5, 3, 6, 2, 7, 4, 8, 1)
)
# Reshape using dcast with aggregation
df_wide_agg <- dcast(df_long_dup, id ~ treatment, value.var = "value",
                     fun.aggregate = mean)
print(df_wide_agg)
df_long1 <- data.frame(
  id = c(1, 1, 2, 2, 3, 3),
  treatment = c("A", "B", "A", "B", "A", "B"),
  metric = c("score", "score", "score", "score", "score", "time"),
  value = c(5, 3, 6, 2, 7, 4)
)
df_wide1 <- dcast(df_long1, id ~ treatment + metric, value.var =
                   "value")
print(df_wide)
array_data <- acast(df_long, id ~ treatment, value.var = "value")
print(array_data)
