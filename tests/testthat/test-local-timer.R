test_that("local_timer", {
  fun <- function(x) {
    tmr <- local_timer()
    Sys.sleep(0.1)
    10
  }
  expect_message(expect_identical(fun(), 10), "^00:00:00\\.\\d{3,3} \\[test-local-timer\\.R:3\\]\\s$")
})

test_that("test_local_timer()", {
  test_local_timer <- function() {
    local_timer()
    Sys.sleep(0.1)
    20
  }

  expect_message(expect_identical(test_local_timer(), 20), "^00:00:00\\.\\d{3,3} \\[test-local-timer\\.R:12\\]\\s$")
})

test_that("local_timer title", {
  fun <- function(x) {
    tmr <- local_timer(title = "a title")
    Sys.sleep(0.1)
    10
  }
  expect_message(expect_identical(fun(), 10), "^00:00:00\\.\\d{3,3} \\[test-local-timer\\.R:22 - a title\\]\\s$")
})

test_that("test_local_timer() title", {
  test_local_timer <- function() {
    local_timer(title = "a title", srcref = FALSE)
    Sys.sleep(0.1)
    20
  }

  expect_message(expect_identical(test_local_timer(), 20), "^00:00:00\\.\\d{3,3} \\[a title\\]\\s$")
})

test_that("local_timer", {
  fun <- function(x) {
    tmr <- local_timer(srcref = FALSE)
    Sys.sleep(0.1)
    10
  }
  expect_message(expect_identical(fun(), 10), "^00:00:00\\.\\d{3,3}\\s$")
})

test_that("test_local_timer()", {
  test_local_timer <- function() {
    local_timer(srcref = FALSE)
    Sys.sleep(0.1)
    20
  }

  expect_message(expect_identical(test_local_timer(), 20), "^00:00:00\\.\\d{3,3}\\s$")
})

test_that("local_timer title", {
  fun <- function(x) {
    tmr <- local_timer(title = "a title", srcref = FALSE)
    Sys.sleep(0.1)
    10
  }
  expect_message(expect_identical(fun(), 10), "^00:00:00\\.\\d{3,3} \\[a title\\]\\s$")
})

test_that("test_local_timer() title", {
  test_local_timer <- function() {
    local_timer(title = "a title", srcref = FALSE)
    Sys.sleep(0.1)
    20
  }

  expect_message(expect_identical(test_local_timer(), 20), "^00:00:00\\.\\d{3,3} \\[a title\\]\\s$")
})

test_that("local_timer .local_envir fails", {
  expect_error(local_timer(.local_envir = 1), "^`env` must be an environment\\.$")
})
