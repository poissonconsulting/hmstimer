test_that("tmr_is_started", {
  expect_false(tmr_is_started(tmr_timer()))
  expect_true(tmr_is_started(tmr_timer(start = TRUE)))
  expect_false(tmr_is_started(hms::as_hms(1)))

  expect_error(tmr_is_started(1), "^`x` must be a time")
  expect_error(
    tmr_is_started(hms::as_hms(c(1, 2))),
    "^`x` must be a time"
  )
  expect_error(
    tmr_is_started(hms::as_hms(NA)),
    "^`x` must be a time"
  )
})

test_that("tmr_is_started", {
  expect_false(tmr_is_started(tmr_timer()))
  expect_true(tmr_is_started(tmr_timer(start = TRUE)))
  expect_false(tmr_is_started(hms::as_hms(1)))

  expect_error(tmr_is_started(1), "^`x` must be a time")
  expect_error(
    tmr_is_started(hms::as_hms(c(1, 2))),
    "^`x` must be a time"
  )
  expect_error(
    tmr_is_started(hms::as_hms(NA)),
    "^`x` must be a time"
  )
})
