# Creating new profiles
If you want to contribute a profile, please start with including `common.inc`. If you know that you need to disable something from `common.inc`, use `ignore <predicate>` before including it (see some of the profiles in the repository for examples).

# Opening issues
If a profile isn't working or it breaks for you, please attach the output for `firejail --debug <program>` to your issue (if it's very long, please upload it as a file and attach it to the issue!).
