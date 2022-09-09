test_that("test tmr_print output", {
  tmr <- tmr_start(tmr_timer())
  sys_time <- hms::as_hms(strftime(Sys.time(), format = "%H:%M:%S", tz = "UTC"))
  start <- tmr_ceiling(hms::as_hms(sys_time - tmr_ceiling(tmr_elapsed(tmr))))
  time_passed <- tmr_ceiling(tmr_elapsed(tmr))
  output <- capture_output(tmr_print(tmr))
  expect_match(output, paste("", start, " (+", time_passed, " => ", sys_time, ")", sep = ""), fixed = TRUE)
  expect_type(output, "character")
})

test_that("test class", {
  tmr <- tmr_start(tmr_timer())
  expect_output(x <- tmr_print(tmr))
  expect_s3_class(x, "hms")
  expect_s3_class(x, "difftime")
  expect_output(expect_invisible(tmr_print(tmr)))
  expect_identical(tmr, x)  
})

test_that("test title FALSE FALSE", {
  tmr <- tmr_start(tmr_timer(title = FALSE))
  output <- capture_output(tmr_print(tmr, title = FALSE))
  expect_match(output, "^\\[1\\] \"(\\d{2,2}:){2,2}\\d{2,2} \\(\\+((\\d){2,2}:){2,2}\\d{2,2} => ((\\d){2,2}:){2,2}\\d{2,2}\\)\"$")
})

test_that("test title FALSE TRUE", {
  tmr <- tmr_start(tmr_timer(title = FALSE))
  output <- capture_output(tmr_print(tmr, title = TRUE))
  expect_match(output, "^\\[1\\] \"(\\d{2,2}:){2,2}\\d{2,2} \\(\\+((\\d){2,2}:){2,2}\\d{2,2} => ((\\d){2,2}:){2,2}\\d{2,2}\\) \\[\\]\"$")
})

test_that("test title TRUE TRUE", {
  fun <- function() { tmr_start(tmr_timer(title = TRUE)) }
  tmr <- fun()
  output <- capture_output(tmr_print(tmr, title = TRUE))
  expect_match(output, "^\\[1\\] \"(\\d{2,2}:){2,2}\\d{2,2} \\(\\+((\\d){2,2}:){2,2}\\d{2,2} => ((\\d){2,2}:){2,2}\\d{2,2}\\) \\[.*\\]\"$")
})

test_that("test title specified TRUE", {
  tmr <- tmr_start(tmr_timer(title = "specified"))
  output <- capture_output(tmr_print(tmr, title = TRUE))
  expect_match(output, "^\\[1\\] \"(\\d{2,2}:){2,2}\\d{2,2} \\(\\+((\\d){2,2}:){2,2}\\d{2,2} => ((\\d){2,2}:){2,2}\\d{2,2}\\) \\[specified\\]\"$")
})

test_that("test title specified FALSE", {
  tmr <- tmr_start(tmr_timer(title = "specified"))
  output <- capture_output(tmr_print(tmr, title = FALSE))
  expect_match(output, "^\\[1\\] \"(\\d{2,2}:){2,2}\\d{2,2} \\(\\+((\\d){2,2}:){2,2}\\d{2,2} => ((\\d){2,2}:){2,2}\\d{2,2}\\)\"$")
})

test_that("stopped title specified FALSE", {
  tmr <- tmr_stop(tmr_start(tmr_timer(title = "specified")))
  output <- capture_output(tmr_print(tmr, title = FALSE))
  expect_match(output,  "^\\[1\\] \"(\\d{2,2}:){2,2}\\d{2,2}.\\d+\"$")
})

test_that("stopped title specified TRUE", {
  tmr <- tmr_stop(tmr_start(tmr_timer(title = "specified")))
  output <- capture_output(tmr_print(tmr, title = TRUE))
  expect_match(output,  "^\\[1\\] \"(\\d{2,2}:){2,2}\\d{2,2}.\\d+ \\[specified\\]\"$")
})
