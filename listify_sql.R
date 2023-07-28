# turn a column of some dataframe into a sql list of integer IDs like (123, 456, 789)
# df is a dataframe object
# col is a column in this dataframe, must be within quotes
listifysql <- function(df, col) {
  ids <- df[[col]]
  ids <- ids[!is.na(ids)]
  if (length(ids) == 0) return(NA_character_)
  ids[1] <- paste0("(", ids[1])
  ids[length(ids)] <- paste0(ids[length(ids)], ")")
  ids <- glue_collapse(ids, sep = ", ")
  return(ids)
}
