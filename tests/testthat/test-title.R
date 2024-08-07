test_that("tmr_title works", {
  expect_identical(tmr_title(tmr_timer()), "")
  expect_identical(tmr_title(tmr_timer(title = NULL)), "")
  expect_identical(tmr_title(tmr_timer(title = "")), "")
  expect_identical(tmr_title(tmr_timer(title = "a tiTLE..")), "a tiTLE..")
  expect_identical(tmr_title(tmr_timer(title = c(tt = "a tiTLE.."))), "a tiTLE..")
})

test_that("tmr_title<- works", {
  tmr <- tmr_timer(title = "A title")
  expect_identical(tmr_title(tmr), "A title")
  tmr_title(tmr) <- "A different title"
  expect_identical(tmr_title(tmr), "A different title")
  tmr_title(tmr) <- NULL
  expect_identical(tmr_title(tmr), "")
  tmr_title(tmr) <- ""
  expect_identical(tmr_title(tmr), "")
  tmr_title(tmr) <- c(tt = "a tiTLE..")
  expect_identical(tmr_title(tmr), "a tiTLE..")
})
