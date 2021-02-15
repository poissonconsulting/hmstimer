test_that("tmr_ceiling", {
  expect_identical(tmr_ceiling(tmr_timer()), tmr_timer())
  expect_identical(tmr_ceiling(tmr_timer(1)), tmr_timer(1))
  expect_identical(tmr_ceiling(tmr_timer(1.5)), tmr_timer(2))
  expect_identical(tmr_ceiling(tmr_timer(0.00001)), tmr_timer(1))
  expect_identical(tmr_ceiling(tmr_timer(1.99999999)), tmr_timer(2))
})

test_that("tmr_ceiling started and stopped", {
  expect_true(tmr_is_stopped(tmr_ceiling(tmr_timer())))
  expect_true(tmr_is_started(tmr_ceiling(tmr_timer(start = TRUE))))
})

test_that("tmr_ceiling elapsed", {
  tmr <- tmr_timer(start = TRUE)
  Sys.sleep(0.001)
  expect_identical(tmr_ceiling(tmr_stop(tmr)), tmr_timer(1))
})
