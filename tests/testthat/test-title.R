test_that("title works", {
  expect_identical(tmr_title(tmr_timer()), "")
  expect_identical(tmr_title(tmr_timer(title = "")), "")
  expect_identical(tmr_title(tmr_timer(title = "a tiTLE..")), "a tiTLE..")
})
