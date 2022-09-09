test_that("tmr_round", {
  expect_identical(tmr_round(tmr_timer(title = FALSE)), tmr_timer(title = FALSE))
  expect_identical(tmr_round(tmr_timer(title = "x")), tmr_timer(title = "x"))
  expect_identical(tmr_round(tmr_timer(1, title = FALSE)), tmr_timer(1, title = FALSE))
  expect_identical(tmr_round(tmr_timer(1.1, title = FALSE)), tmr_timer(1, title = FALSE))
  expect_identical(tmr_round(tmr_timer(1.6, title = FALSE)), tmr_timer(2, title = FALSE))
})

test_that("tmr_round started and stopped", {
  expect_true(tmr_is_stopped(tmr_round(tmr_timer())))
  expect_true(tmr_is_started(tmr_round(tmr_timer(start = TRUE))))
})

test_that("tmr_round elapsed", {
  tmr <- tmr_timer(start = TRUE, title = FALSE)
  Sys.sleep(0.001)
  expect_identical(tmr_round(tmr_stop(tmr), digits = -3), tmr_timer(title = FALSE))
  expect_gt(tmr_round(tmr, digits = 3), tmr_timer(title = FALSE))
})

test_that("tmr_round digits", {
  expect_identical(tmr_round(tmr_timer(19, title = FALSE), digits = -1), tmr_timer(20, title = FALSE))
  expect_identical(tmr_round(tmr_timer(1.09, title = FALSE), digits = 1), tmr_timer(1.1, title = FALSE))
  expect_identical(tmr_round(tmr_timer(1.09, title = FALSE), digits = 2), tmr_timer(1.09, title = FALSE))
})
