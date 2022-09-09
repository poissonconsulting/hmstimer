test_that("tmr_floor", {
  expect_identical(tmr_floor(tmr_timer(title = FALSE)), tmr_timer(title = FALSE))
  expect_identical(tmr_floor(tmr_timer(title = "x")), tmr_timer(title = "x"))
  expect_identical(tmr_floor(tmr_timer(1, title = FALSE)), tmr_timer(1, title = FALSE))
  expect_identical(tmr_floor(tmr_timer(1.5, title = FALSE)), tmr_timer(1, title = FALSE))
  expect_identical(tmr_floor(tmr_timer(0.00001, title = FALSE)), tmr_timer(0, title = FALSE))
  expect_identical(tmr_floor(tmr_timer(1.99999999, title = FALSE)), tmr_timer(1, title = FALSE))
})

test_that("tmr_floor started and stopped", {
  expect_true(tmr_is_stopped(tmr_floor(tmr_timer())))
  expect_true(tmr_is_started(tmr_floor(tmr_timer(start = TRUE))))
})

test_that("tmr_floor elapsed", {
  tmr <- tmr_timer(start = TRUE, title = FALSE)
  Sys.sleep(0.001)
  expect_identical(tmr_floor(tmr_stop(tmr)), tmr_timer(title = FALSE))
})
