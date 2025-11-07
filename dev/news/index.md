# Changelog

## hmstimer 0.3.0.9003

- Merge branch ‘main’ of github.com:poissonconsulting/hmstimer.

## hmstimer 0.3.0.9002

- Added dependency
  [`dttr2::chk_time()`](https://poissonconsulting.github.io/dttr2/reference/chk_time.html).

- Adding chk as a dependency.

## hmstimer 0.3.0.9001

### Continuous integration

- Fetch tags for fledge workflow to avoid unnecessary NEWS entries
  ([\#32](https://github.com/poissonconsulting/hmstimer/issues/32)).

- Use larger retry count for lock-threads workflow
  ([\#31](https://github.com/poissonconsulting/hmstimer/issues/31)).

- Use Ubuntu 24.04 and styler PR
  ([\#30](https://github.com/poissonconsulting/hmstimer/issues/30)).

- Use Ubuntu 24.04 and styler PR
  ([\#29](https://github.com/poissonconsulting/hmstimer/issues/29)).

- Correctly detect branch protection
  ([\#28](https://github.com/poissonconsulting/hmstimer/issues/28)).

- Use stable pak
  ([\#27](https://github.com/poissonconsulting/hmstimer/issues/27)).

- Latest changes
  ([\#26](https://github.com/poissonconsulting/hmstimer/issues/26)).

- Use pkgdown branch
  ([\#25](https://github.com/poissonconsulting/hmstimer/issues/25)).

- Install via R CMD INSTALL ., not pak
  ([\#24](https://github.com/poissonconsulting/hmstimer/issues/24)).

- Install local package for pkgdown builds.

- Improve support for protected branches with fledge.

- Improve support for protected branches, without fledge.

- Sync with latest developments.

- Fix edge case of no suggested packages.

- Use workflows from actions-sync.

- Sync rcc workflows.

- Sync codecov workflows.

### Uncategorized

- Merge branch ‘main’ of github.com:poissonconsulting/hmstimer.

## hmstimer 0.3.0.9000

- Same as previous version.

## hmstimer 0.3.0

CRAN release: 2024-08-19

### Features

- Added functions to get, set and test if title
  - [`tmr_title()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_title.md)
  - `tmr_title<-`
  - [`tmr_is_titled()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_is_titled.md)
- Added `print_title = TRUE` argument to print/format functions
  - `tmr_print(print_title = TRUE)`
  - `tmr_format(print_title = TRUE)`
- Added functions to time individual functions or blocks of code
  - [`local_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/local_timer.md)
  - [`with_timer()`](https://poissonconsulting.github.io/hmstimer/dev/reference/with_timer.md)

## hmstimer 0.2.1

CRAN release: 2022-09-20

- Fix CRAN tests.

## hmstimer 0.2.0

CRAN release: 2022-08-26

- Added
  [`tmr_print()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_print.md).

## hmstimer 0.1.1

CRAN release: 2021-09-20

- Removed deprecated `start = FALSE` argument from
  [`tmr_reset()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_reset.md).

## hmstimer 0.1.0

CRAN release: 2020-07-09

- Hard deprecated `start = FALSE` argument from
  [`tmr_reset()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_reset.md).
- Added
  [`tmr_format()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_format.md).
- Added
  [`tmr_round()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_round.md),
  [`tmr_floor()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_floor.md)
  and
  [`tmr_ceiling()`](https://poissonconsulting.github.io/hmstimer/dev/reference/tmr_ceiling.md).
- Switched to tidyverse style error and warning messages.

## hmstimer 0.0.2

CRAN release: 2019-07-24

- Replaced
  [`hms::as.hms`](https://hms.tidyverse.org/reference/Deprecated.html)
  with [`hms::as_hms`](https://hms.tidyverse.org/reference/hms.html) for
  hms 0.5.0.

## hmstimer 0.0.1

CRAN release: 2019-05-24

- Added a `NEWS.md` file to track changes to the package.
