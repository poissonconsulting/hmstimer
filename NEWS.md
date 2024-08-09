<!-- NEWS.md is maintained by https://fledge.cynkra.com, contributors should not edit this file -->

# hmstimer 0.3.0.9000

## Features

- Added title: `tmr_is_titled()`, `tmr_title()`, `tmr_print(print_title = TRUE)`, `tmr_format(print_title = TRUE)`, `local_timer(title = "", srcref = TRUE)` (#11, #19).

- Add `local_timer()` (#12, #14).

## Chore

- Add `.github/pkg.lock` to `.gitignore`.

## Continuous integration

- Use action from actions-sync.

- Use action from actions-sync.

- Use action from dm.

- Reusable workflows need a hook, vendoring the two actions needed for now.

  This reverts commit bfe79700986c5bae21d89b23fb862dbbef4780b8.

- Try reusable workflow.

## Uncategorized

- Merge pull request #18 from poissonconsulting/upkeep-2024-08.

- Added with_timer(). (#16).


# hmstimer 0.3.0

## Features

- Added functions to get, set and test if title
  - `tmr_title()`
  - `tmr_title<-`
  - `tmr_is_titled()`
  
- Added `print_title = TRUE` argument to print/format functions
  - `tmr_print(print_title = TRUE)`
  - `tmr_format(print_title = TRUE)`
  
- Added functions to time individual functions or blocks of code
  - `local_timer()`
  - `with_timer()`
  

# hmstimer 0.2.1

- Fix CRAN tests.


# hmstimer 0.2.0

- Added `tmr_print()`.


# hmstimer 0.1.1

- Removed deprecated `start = FALSE` argument from `tmr_reset()`.

# hmstimer 0.1.0

- Hard deprecated `start = FALSE` argument from `tmr_reset()`.
- Added `tmr_format()`.
- Added `tmr_round()`, `tmr_floor()` and `tmr_ceiling()`.
- Switched to tidyverse style error and warning messages.

# hmstimer 0.0.2

- Replaced `hms::as.hms` with `hms::as_hms` for hms 0.5.0.

# hmstimer 0.0.1

- Added a `NEWS.md` file to track changes to the package.
