test_that("format", {
  expect_error(tmr_format(1), "^`x` must be a time")
  expect_identical(tmr_format(tmr_timer(61.36)), "00:01:01.360")
  expect_identical(tmr_format(tmr_timer(61.36), digits = 1), "00:01:01.4")
  expect_identical(tmr_format(tmr_timer(61.36), digits = 0), "00:01:01")
  expect_identical(tmr_format(tmr_timer(59.6), digits = 0), "00:01:00")
  expect_identical(tmr_format(tmr_timer(59.6), digits = 1), "00:00:59.6")
  expect_identical(tmr_format(tmr_timer(59.6), digits = 3), "00:00:59.600")
  expect_identical(tmr_format(tmr_timer(59.6), digits = 6), "00:00:59.600000")
  expect_identical(tmr_format(tmr_timer(59.60001), digits = 6), "00:00:59.600010")
  expect_error(tmr_format(tmr_timer(59.60001), digits = -3), "`digits` must be a count")
  expect_identical(tmr_format(tmr_timer(59.60001), digits = 0), "00:01:00")
  expect_identical(tmr_format(tmr_timer(58.40001), digits = 0), "00:00:58")
  expect_identical(tmr_format(tmr_timer(123.40001), digits = 0), "00:02:03")
})

test_that("tmr_format digit errors", {
  tmr <- tmr_timer()
  expect_error(tmr_format(tmr, digits = 1:2), "^`digits` must be a count")
  expect_error(tmr_format(tmr, digits = NA), "^`digits` must be a count")
  expect_error(tmr_format(tmr, digits = NA_real_), "`digits` must be a count")
  expect_error(tmr_format(tmr, digits = 0.5), "`digits` must be a count")
})

test_that("format title", {
  expect_identical(tmr_format(tmr_timer(title = "")), "00:00:00.000")
  expect_identical(tmr_format(tmr_timer(title = NULL)), "00:00:00.000")
  expect_identical(tmr_format(tmr_timer(title = "a title")), "00:00:00.000 [a title]")
})

test_that("format title print_title = FALSE", {
  expect_identical(tmr_format(tmr_timer(title = "a title"), print_title = FALSE), "00:00:00.000")
})
