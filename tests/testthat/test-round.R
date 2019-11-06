context("round")

test_that("tmr_round", {
  expect_identical(tmr_round(tmr_timer()), tmr_timer())
  expect_identical(tmr_round(tmr_timer(1)), tmr_timer(1))
  expect_identical(tmr_round(tmr_timer(1.1)), tmr_timer(1))
  expect_identical(tmr_round(tmr_timer(1.6)), tmr_timer(2))
})

test_that("tmr_round started and stopped", {
  expect_true(tmr_is_stopped(tmr_round(tmr_timer())))
  expect_true(tmr_is_started(tmr_round(tmr_timer(start = TRUE))))
})

test_that("tmr_round elapsed", {
  tmr <- tmr_timer(start = TRUE)
  Sys.sleep(0.001)
  expect_identical(tmr_round(tmr_stop(tmr), digits = -3), tmr_timer())
  expect_gt(tmr_round(tmr, digits = 3), tmr_timer())
})

test_that("tmr_round digits", {
  expect_identical(tmr_round(tmr_timer(19), digits = -1), tmr_timer(20))
  expect_identical(tmr_round(tmr_timer(1.09), digits = 1), tmr_timer(1.1))
  expect_identical(tmr_round(tmr_timer(1.09), digits = 2), tmr_timer(1.09))
})
