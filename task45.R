names_list <- c("anna", "jana", "kamil", "norbert", "pavel", "petr", "stanislav", "zuzana")
# Search for name jana:
grep("jana", names_list, perl = TRUE)

# Search for all names containing letter n at least once:
grep("n+", names_list, perl = TRUE)

#Search for all names containing letters nn:
grep("n{2}", names_list, perl = TRUE)

# Search for all names starting with n:
grep("^n", names_list, perl = TRUE)

# Search for names Anna or Jana:
grep("Anna|Jana", names_list, perl = TRUE)

# Search for names starting with z and ending with a:
grep("^z.*a$", names_list, perl = TRUE)
