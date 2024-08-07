test_that("tmr_floor", {
  expect_identical(tmr_floor(tmr_timer()), tmr_timer())
  expect_identical(tmr_floor(tmr_timer(1)), tmr_timer(1))
  expect_identical(tmr_floor(tmr_timer(1.5)), tmr_timer(1))
  expect_identical(tmr_floor(tmr_timer(0.00001)), tmr_timer(0))
  expect_identical(tmr_floor(tmr_timer(1.99999999)), tmr_timer(1))
})

test_that("tmr_floor started and stopped", {
  expect_true(tmr_is_stopped(tmr_floor(tmr_timer())))
  expect_true(tmr_is_started(tmr_floor(tmr_timer(start = TRUE))))
})

test_that("tmr_floor elapsed", {
  tmr <- tmr_timer(start = TRUE)
  Sys.sleep(0.001)
  expect_identical(tmr_floor(tmr_stop(tmr)), tmr_timer())
})

test_that("tmr_floor title preserved", {
  tmr <- tmr_timer(start = TRUE, title = "a title")
  expect_identical(tmr_title(tmr_floor(tmr)), "a title")
})
