<!-- NEWS.md is maintained by https://fledge.cynkra.com, contributors should not edit this file -->

# hmstimer 0.3.0.9004

## Chore

- Auto-update from GitHub Actions.

  Run: https://github.com/poissonconsulting/hmstimer/actions/runs/17450837743

## Continuous integration

- Fix reviewdog and add commenting workflow (#50).

- Use workflows for fledge (#49).

- Sync (#48).

- Use reviewdog for external PRs (#47).

- Cleanup and fix macOS (#46).

- Format with air, check detritus, better handling of `extra-packages` (#45).

- Enhance permissions for workflow (#43).

- Permissions, better tests for missing suggests, lints (#42).

- Only fail covr builds if token is given (#41).

- Always use `_R_CHECK_FORCE_SUGGESTS_=false` (#40).

- Correct installation of xml2 (#39).

- Explain (#38).

- Add xml2 for covr, print testthat results (#37).

- Fix (#36).

- Use mainline styler (#35).

- Sync (#34).


# hmstimer 0.3.0.9003

- Merge branch 'main' of github.com:poissonconsulting/hmstimer.


# hmstimer 0.3.0.9002

- Added dependency `dttr2::chk_time()`.

- Adding chk as a dependency.


# hmstimer 0.3.0.9001

## Continuous integration

- Fetch tags for fledge workflow to avoid unnecessary NEWS entries (#32).

- Use larger retry count for lock-threads workflow (#31).

- Use Ubuntu 24.04 and styler PR (#30).

- Use Ubuntu 24.04 and styler PR (#29).

- Correctly detect branch protection (#28).

- Use stable pak (#27).

- Latest changes (#26).

- Use pkgdown branch (#25).

- Install via R CMD INSTALL ., not pak (#24).

- Install local package for pkgdown builds.

- Improve support for protected branches with fledge.

- Improve support for protected branches, without fledge.

- Sync with latest developments.

- Fix edge case of no suggested packages.

- Use workflows from actions-sync.

- Sync rcc workflows.

- Sync codecov workflows.

## Uncategorized

- Merge branch 'main' of github.com:poissonconsulting/hmstimer.


# hmstimer 0.3.0.9000

- Same as previous version.


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
