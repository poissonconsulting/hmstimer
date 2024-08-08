test_that("tmr_is_stopped", {
  expect_true(tmr_is_stopped(tmr_timer()))
  expect_false(tmr_is_stopped(tmr_timer(start = TRUE)))
  expect_true(tmr_is_stopped(hms::as_hms(1)))

  expect_error(tmr_is_stopped(1), "^`x` must be class hms[.]$")
  expect_error(
    tmr_is_stopped(hms::as_hms(c(1, 2))),
    "^`x` must be a scalar[.]$"
  )
  expect_error(
    tmr_is_stopped(hms::as_hms(NA)),
    "^`x` must not be a missing value[.]$"
  )
})
