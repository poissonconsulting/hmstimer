test_that("with_timer", {
  fun <- function() {
    Sys.sleep(0.1)
    NULL
  }
  expect_message(with_timer(fun()), "^00:00:00\\.\\d{3,3}\\s$")
})

test_that("with_timer", {
  expect_message(with_timer(
    for(i in 1:2) {
      Sys.sleep(0.1)
    }
    ), "^00:00:00\\.\\d{3,3}\\s$")
})
