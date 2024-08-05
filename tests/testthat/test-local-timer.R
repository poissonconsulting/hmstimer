test_that("local_timer", {
  fun <- function(x) {
    tmr <- local_timer()
    Sys.sleep(0.1)
    NULL
  }
  expect_message(fun(), "^00:00:00\\.\\d{3,3}\\s$")
})

test_that("test_local_timer()", {
  test_local_timer <- function() {
    local_timer()
    Sys.sleep(0.1)
    NULL
  }
  
  expect_message(test_local_timer(), "^00:00:00\\.\\d{3,3}\\s$")
})
