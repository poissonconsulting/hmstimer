test_that("tmr_is_titled works", {
  expect_false(tmr_is_titled(tmr_timer()))
  expect_true(tmr_is_titled(tmr_timer(title = "my timer")))
})
