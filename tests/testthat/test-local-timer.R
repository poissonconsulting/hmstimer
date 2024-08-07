test_that("local_timer", {
  fun <- function(x) {
    tmr <- local_timer()
    Sys.sleep(0.1)
    10
  }
  expect_message(expect_identical(fun(), 10), "^00:00:00\\.\\d{3,3}\\s$")
})

test_that("test_local_timer()", {
  test_local_timer <- function() {
    local_timer()
    Sys.sleep(0.1)
    20
  }

  expect_message(expect_identical(test_local_timer(), 20), "^00:00:00\\.\\d{3,3}\\s$")
})
