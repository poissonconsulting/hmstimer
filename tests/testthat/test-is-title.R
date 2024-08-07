test_that("tmr_is_title works", {
  expect_false(tmr_is_title(tmr_timer()))
  expect_true(tmr_is_title(tmr_timer(title = "my timer")))
})
