test_that("local_timer", {
  fun <- function(x) {
    tmr <- local_timer()
    Sys.sleep(0.1)
    NULL
  }
  expect_message(print(fun()), "^00:00:00.1\\d{2,2}\\s$")
})

test_that("test_local_timer()", {
  test_local_timer <- function() {
    local_timer()
    Sys.sleep(0.1)
    NULL
  }
  
  test_local_timer()
})
