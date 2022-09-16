test_that("local_timer no title", {
  fun <- function(x) {
    tmr <- local_timer(title = FALSE)
    Sys.sleep(0.1)
    NULL
  }
  expect_message(fun(), "^00:00:00.1\\d{2,2}\\s*$")
})

test_that("local_timer title thing", {
  fun <- function(x) {
    tmr <- local_timer(title = "thing")
    Sys.sleep(0.1)
    NULL
  }
  expect_message(fun(), "^00:00:00.1\\d{2,2} \\[thing\\]\\s*$")
})

test_that("local_timer title TRUE", {
  fun <- function(x) {
    tmr <- local_timer(title = TRUE)
    Sys.sleep(0.1)
    NULL
  }
  expect_message(fun(), "^00:00:00.1\\d{2,2} \\[.*:.*\\]\\s*$")
})

test_that("test_local_timer()", {
  test_local_timer()
})

test_that("test_local_timer()", {
  expect_message(test_local_timer(), "^00:00:00.1\\d{2,2} \\[:\\]\\s*$")
  skip("unclear why missing test-local-timer.R:29 when expect message!")
  expect_message(test_local_timer(), "^00:00:00.1\\d{2,2} \\[")
})

test_that("test_local_timer() not title", {
  expect_message(test_local_timer(title = FALSE), "^00:00:00.1\\d{2,2}\\s*$")
})
