test_that("tmr_start", {
  tmr <- tmr_timer()
  expect_false(tmr_is_started(tmr))
  tmr <- tmr_start(tmr)
  expect_true(tmr_is_started(tmr))
  expect_warning(tmr_start(tmr), "^`x` is already started[.]$")

  expect_error(tmr_start(1), "^`x` must be class hms[.]$")
  expect_error(tmr_start(hms::as_hms(NA)), "^`x` must not be a missing value[.]$")
  expect_error(tmr_start(hms::as_hms(c(1, 2))), "^`x` must be a scalar[.]$")
})

test_that("tmr_start title preserved", {
  tmr <- tmr_timer(start = FALSE, title = "a title")
  expect_identical(tmr_title(tmr_start(tmr)), "a title")
})
