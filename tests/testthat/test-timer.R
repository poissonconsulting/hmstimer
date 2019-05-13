context("timer")

test_that("tmr_timer",{
  expect_is(tmr_timer(), c("hms", "timediff"))

  x <- tmr_timer(3)
  expect_identical(x, hms::as.hms(x))

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

test_that("tmr_is_started",{
  expect_false(tmr_is_started(tmr_timer()))
  expect_true(tmr_is_started(tmr_timer(start = TRUE)))
  expect_false(tmr_is_started(hms::as.hms(1)))
  
  expect_error(tmr_is_started(1), "x must be class hms")
  expect_error(tmr_is_started(hms::as.hms(c(1, 2))),
               "x must be a scalar")
#  expect_error(tmr_is_started(hms::as.hms(NA)),
#               "x must not be a missing value")
})

test_that("tmr_is_started",{
  expect_false(tmr_is_started(tmr_timer()))
  expect_true(tmr_is_started(tmr_timer(start = TRUE)))
  expect_false(tmr_is_started(hms::as.hms(1)))
  
  expect_error(tmr_is_started(1), "x must be class hms")
  expect_error(tmr_is_started(hms::as.hms(c(1, 2))),
               "x must be a scalar")
#  expect_error(tmr_is_started(hms::as.hms(NA)),
#               "x must not be a missing value")
})

test_that("tmr_is_stopped",{
  expect_true(tmr_is_stopped(tmr_timer()))
  expect_false(tmr_is_stopped(tmr_timer(start = TRUE)))
  expect_true(tmr_is_stopped(hms::as.hms(1)))
  
  expect_error(tmr_is_stopped(1), "x must be class hms")
  expect_error(tmr_is_stopped(hms::as.hms(c(1, 2))),
               "x must be a scalar")
#  expect_error(tmr_is_stopped(hms::as.hms(NA)),
#               "x must not be a missing value")
})

test_that("tmr_reset",{
  
  expect_identical(tmr_reset(tmr_timer(1)), tmr_timer())
  expect_identical(tmr_reset(tmr_timer(1)), tmr_timer())
  expect_identical(tmr_reset(tmr_timer(1), 2), tmr_timer(2))
  expect_equal(tmr_reset(tmr_timer(1), 2, TRUE), tmr_timer(2, TRUE))
})

test_that("tmr_start",{
  tmr <- tmr_timer()
  expect_false(tmr_is_started(tmr))
  tmr <- tmr_start(tmr)
  expect_true(tmr_is_started(tmr))
  expect_warning(tmr_start(tmr), "x is already started")
  
  expect_error(tmr_start(1), "x must be class hms")
#  expect_error(tmr_start(hms::as.hms(NA)), "x must not be a missing value")
  expect_error(tmr_start(hms::as.hms(c(1,2))), "x must be a scalar")
})

test_that("tmr_stop",{
  tmr <- tmr_timer(start = TRUE)
  expect_false(tmr_is_stopped(tmr))
  tmr <- tmr_stop(tmr)
  expect_true(tmr_is_stopped(tmr))
  expect_warning(tmr_stop(tmr), "x is already stopped")  

  expect_error(tmr_stop(1), "x must be class hms")
#  expect_error(tmr_stop(hms::as.hms(NA)), "x must not be a missing value")
  expect_error(tmr_stop(hms::as.hms(c(1,2))), "x must be a scalar")
})

test_that("tmr_elapsed",{
  tmr <- tmr_timer()
  expect_identical(tmr_elapsed(tmr), tmr)
  tmr <- tmr_start(tmr)
  sys_time <- as.numeric(Sys.time())
  expect_gte(attr(tmr_elapsed(tmr), "start"), sys_time)
  expect_true(tmr_is_started(tmr))
  elapsed <- tmr_elapsed(tmr)
  expect_lte(tmr_elapsed(elapsed), tmr_elapsed(tmr))
  expect_lte(tmr_elapsed(tmr), tmr_elapsed(elapsed))
  Sys.sleep(1)
  tmr <- tmr_stop(tmr)
  expect_gte(as.numeric(tmr), 1)
  expect_identical(tmr_elapsed(tmr), tmr)
})
