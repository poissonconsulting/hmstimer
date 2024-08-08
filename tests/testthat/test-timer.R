test_that("tmr_timer", {
  expect_s3_class(tmr_timer(), c("hms", "timediff"))

  x <- tmr_timer(3)
  expect_identical(x, hms::as_hms(x))

  expect_identical(as.double(tmr_timer()), 0)
  expect_identical(as.double(tmr_timer(1)), 1)
  expect_identical(as.double(tmr_timer(1.4)), 1.4)
  expect_identical(as.double(tmr_timer(3L)), 3)

  expect_error(tmr_timer(TRUE), "^`seconds` must be numeric[.]$")
  expect_error(tmr_timer(NA_real_), "^`seconds` must not be a missing value[.]$")
  expect_error(tmr_timer(c(1, 2)), "^`seconds` must be a scalar[.]$")

  expect_error(tmr_timer(0, 1), "^`start` must be class logical[.]$")
  expect_error(tmr_timer(0, NA), "^`start` must not be a missing value[.]$")
  expect_error(tmr_timer(0, c(TRUE, FALSE)), "`start` must be a scalar[.]$")

  x <- tmr_timer(0, start = TRUE)
  expect_type(attr(x, "start"), "double")
})

test_that("tmr_timer title errors", {
  expect_error(tmr_timer(title = 1), "`title` must be numeric\\.$")
  expect_error(tmr_timer(title = c("1", "2")), "`title` must be a scalar\\.$")
  expect_error(tmr_timer(title = NA_character_), "`title` must not be a missing value\\.$")
})

test_that("tmr_timer dots empty", {
  expect_error(tmr_timer(title2 = 1))
})
