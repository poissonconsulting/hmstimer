test_that("tmr_ceiling", {
  expect_identical(tmr_ceiling(tmr_timer(title = FALSE)), tmr_timer(title = FALSE))
  expect_identical(tmr_ceiling(tmr_timer(title = "x")), tmr_timer(title = "x"))
  expect_identical(tmr_ceiling(tmr_timer(1, title = FALSE)), tmr_timer(1, title = FALSE))
  expect_identical(tmr_ceiling(tmr_timer(1.5, title = FALSE)), tmr_timer(2, title = FALSE))
  expect_identical(tmr_ceiling(tmr_timer(0.00001, title = FALSE)), tmr_timer(1, title = FALSE))
  expect_identical(tmr_ceiling(tmr_timer(1.99999999, title = FALSE)), tmr_timer(2, title = FALSE))
})

test_that("tmr_ceiling started and stopped", {
  expect_true(tmr_is_stopped(tmr_ceiling(tmr_timer())))
  expect_true(tmr_is_started(tmr_ceiling(tmr_timer(start = TRUE))))
})

test_that("tmr_ceiling elapsed", {
  tmr <- tmr_timer(start = TRUE, title = FALSE)
  Sys.sleep(0.001)
  expect_identical(tmr_ceiling(tmr_stop(tmr)), tmr_timer(1, title = FALSE))
})
