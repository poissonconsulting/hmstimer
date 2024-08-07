test_that("with_timer", {
  fun <- function() {
    Sys.sleep(0.1)
    10
  }
  expect_message(expect_identical(with_timer(fun()), 10), "^00:00:00\\.\\d{3,3}\\s$")
})

test_that("with_timer", {
  expect_message(expect_identical(with_timer({
    for (i in 1:2) {
      Sys.sleep(0.1)
    }
    20
  }), 20), "^00:00:00\\.\\d{3,3}\\s$")
})
