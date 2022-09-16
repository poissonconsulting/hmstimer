test_that("tmr_reset", {
  expect_identical(tmr_reset(tmr_timer(1, title = FALSE)), tmr_timer(title = FALSE))
  expect_identical(tmr_reset(tmr_timer(1, title = "x")), tmr_timer(title = "x"))
  expect_true(tmr_is_stopped(tmr_reset(tmr_timer())))
  expect_true(tmr_is_started(tmr_reset(tmr_timer(start = TRUE))))
  expect_identical(tmr_reset(tmr_timer(1, title = FALSE), 2), tmr_timer(2, title = FALSE))
})
