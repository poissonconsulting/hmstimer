context("timer")

test_that("tmr_timer",{
  expect_is(tmr_timer(), c("hmstimer", "hms", "timediff"))

  x <- tmr_timer(3)
  class(x) <- c("hms", "timediff")
  expect_identical(x, hms::as_hms(x))

  expect_identical(as.double(tmr_timer()), 0)
  expect_identical(as.double(tmr_timer(1)), 1)
  expect_identical(as.double(tmr_timer(1.4)), 1.4)
  expect_identical(as.double(tmr_timer(3L)), 3)
  
  expect_error(tmr_timer(TRUE), "seconds must be class numeric")
  expect_error(tmr_timer(NA_real_), "seconds must not be a missing value")
  expect_error(tmr_timer(c(1,2)), "seconds must be a scalar")
  
  expect_error(tmr_timer(0, 1), "start must be class logical")
  expect_error(tmr_timer(0, NA), "start must not be a missing value")
  expect_error(tmr_timer(0, c(TRUE, FALSE)), "start must be a scalar")
  
  x <- tmr_timer(0, start = TRUE)
  expect_is(attr(x, "start"), "numeric")
})

test_that("tmr_is_running",{
  expect_false(tmr_is_running(tmr_timer()))
  expect_true(tmr_is_running(tmr_timer(start = TRUE)))
  expect_false(tmr_is_running(hms::as_hms(1)))
  
  expect_error(tmr_is_running(1), "x must be class hms")
  expect_error(tmr_is_running(hms::as_hms(c(1, 2))),
               "x must be a scalar")
  expect_error(tmr_is_running(hms::as_hms(NA)),
               "x must not be a missing value")
})

test_that("tmr_is_running",{
  expect_false(tmr_is_running(tmr_timer()))
  expect_true(tmr_is_running(tmr_timer(start = TRUE)))
  expect_false(tmr_is_running(hms::as_hms(1)))
  
  expect_error(tmr_is_running(1), "x must be class hms")
  expect_error(tmr_is_running(hms::as_hms(c(1, 2))),
               "x must be a scalar")
  expect_error(tmr_is_running(hms::as_hms(NA)),
               "x must not be a missing value")
})

test_that("tmr_reset",{
  
  expect_identical(tmr_reset(tmr_timer(1)), tmr_timer())
  expect_identical(tmr_reset(tmr_timer(1)), tmr_timer())

  expect_true(tmr_is_running(tmr_timer(start = TRUE)))
  expect_false(tmr_is_running(hms::as_hms(1)))
  
  expect_error(tmr_is_running(1), "x must be class hms")
  expect_error(tmr_is_running(hms::as_hms(c(1, 2))),
               "x must be a scalar")
  expect_error(tmr_is_running(hms::as_hms(NA)),
               "x must not be a missing value")
})


