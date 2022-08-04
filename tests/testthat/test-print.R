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
  x <- tmr_print(tmr)
  expect_s3_class(x, "hms")
  expect_s3_class(x, "difftime")
  expect_invisible(tmr_print(tmr))  
  expect_identical(tmr, x)  
})

