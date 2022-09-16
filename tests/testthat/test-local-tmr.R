test_that("local_tmr no title", {
  fun <- function(x) {
    tmr <- local_timer(title = FALSE)
    Sys.sleep(0.1)
    NULL
  }
  expect_message(fun(), "^00:00:00.1\\d{2,2}")
})

test_that("local_tmr title thing", {
  fun <- function(x) {
    tmr <- local_timer(title = "thing")
    Sys.sleep(0.1)
    NULL
  }
  expect_message(fun(), "^00:00:00.1\\d{2,2} \\[thing\\]")
})

test_that("local_tmr title TRUE", {
  fun <- function(x) {
    tmr <- local_timer(title = TRUE)
    Sys.sleep(0.1)
    NULL
  }
  expect_message(fun(), "^00:00:00.1\\d{2,2} \\[.*:.*\\]")
})

test_that("local_tmr title TRUE", {
  tmr <- local_timer()
})

