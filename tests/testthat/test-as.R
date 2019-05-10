context("as")

test_that("as",{
  expect_is(as_hms(1), c("hmstimer", "hms", "timediff"))
  expect_equal(as.double(as_hms(1)), 1)
  expect_equal(as.double(as_hms(2L)), 2)
})
