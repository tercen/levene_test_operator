suppressPackageStartupMessages({
  library(tercen)
  library(tercenApi)
  library(dplyr)
  library(rstatix)
})

ctx = tercenCtx()

if(length(ctx$colors) < 1) stop("A color factor is required.")

col_names <- unlist(ctx$colors)
fixed_effect <- paste0(
  paste0("`", col_names, "`"),
  collapse = " * "
)

form <- formula(paste0(".y ~ ", fixed_effect))

df <- ctx$select(c(".ci", ".ri", ".y", col_names)) %>%
  group_by(.ci, .ri) %>%
  levene_test(., form) %>%
  as_tibble() %>%
  mutate(df1 = as.double(df1), df2 = as.double(df2)) %>%
  ctx$addNamespace() %>%
  ctx$save()
