test_that("tmr_stop", {
  tmr <- tmr_timer(start = TRUE)
  expect_false(tmr_is_stopped(tmr))
  tmr <- tmr_stop(tmr)
  expect_true(tmr_is_stopped(tmr))
  expect_warning(tmr_stop(tmr), "^`x` is already stopped[.]$")

  expect_error(tmr_stop(1), "^`x` must be class hms[.]$")
  expect_error(tmr_stop(hms::as_hms(NA)), "^`x` must not be a missing value[.]$")
  expect_error(tmr_stop(hms::as_hms(c(1, 2))), "^`x` must be a scalar[.]$")
})

test_that("tmr_stop title preserved", {
  tmr <- tmr_timer(start = TRUE, title = "a title")
  expect_identical(tmr_title(tmr_stop(tmr)), "a title")
})
