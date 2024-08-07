test_that("tmr_reset", {
  expect_identical(tmr_reset(tmr_timer(1)), tmr_timer())
  expect_true(tmr_is_stopped(tmr_reset(tmr_timer())))
  expect_true(tmr_is_started(tmr_reset(tmr_timer(start = TRUE))))
  expect_identical(tmr_reset(tmr_timer(1), 2), tmr_timer(2))
})

test_that("tmr_reset title preserved", {
  tmr <- tmr_timer(start = TRUE, title = "a title")
  expect_identical(tmr_title(tmr_reset(tmr)), "a title")
})
