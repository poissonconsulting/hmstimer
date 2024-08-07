test_that("test tmr_print output", {
  tmr <- tmr_start(tmr_timer())
  Sys.sleep(0.1)
  expect_match(capture_output(tmr_print(tmr)), "^\\[1\\] \"(\\d{2}:){2}\\d{2} \\(\\+(0{2}:){2}\\d{2} => (\\d{2}:){2}\\d{2}\\)\"$")
})

test_that("test class", {
  tmr <- tmr_start(tmr_timer())
  expect_output(x <- tmr_print(tmr), "^\\[1\\] \"(\\d{2}:){2}\\d{2} \\(\\+(0{2}:){2}\\d{2} => (\\d{2}:){2}\\d{2}\\)\"$")
  expect_s3_class(x, "hms")
  expect_s3_class(x, "difftime")
  expect_output(expect_invisible(tmr_print(tmr)), "^\\[1\\] \"(\\d{2}:){2}\\d{2} \\(\\+(0{2}:){2}\\d{2} => (\\d{2}:){2}\\d{2}\\)\"$")
  expect_identical(tmr, x)
})

test_that("test print not started", {
  tmr <- tmr_timer()
  expect_output(tmr_print(tmr), "^\\[1\\] \"00:00:00\"$")
})
