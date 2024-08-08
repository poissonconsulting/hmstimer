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

test_that("test print started NULL title", {
  tmr <- tmr_timer(start = TRUE, title = NULL)
  expect_output(tmr_print(tmr), "^\\[1\\] \"(\\d{2}:){2}\\d{2} \\(\\+(0{2}:){2}\\d{2} => (\\d{2}:){2}\\d{2}\\)\"$")
})

test_that("test print started title no length", {
  tmr <- tmr_timer(start = TRUE, title = "")
  expect_output(tmr_print(tmr), "^\\[1\\] \"(\\d{2}:){2}\\d{2} \\(\\+(0{2}:){2}\\d{2} => (\\d{2}:){2}\\d{2}\\)\"$")
})

test_that("test print started with title", {
  tmr <- tmr_timer(start = TRUE, title = "a title")
  expect_output(tmr_print(tmr), "^\\[1\\] \"(\\d{2}:){2}\\d{2} \\(\\+(0{2}:){2}\\d{2} => (\\d{2}:){2}\\d{2}\\) \\[a title\\]\"$")
})

test_that("test print print_title = FALSE", {
  tmr <- tmr_timer(start = TRUE, title = "a title")
  expect_output(tmr_print(tmr, print_title = FALSE), "^\\[1\\] \"(\\d{2}:){2}\\d{2} \\(\\+(0{2}:){2}\\d{2} => (\\d{2}:){2}\\d{2}\\)\"$")
})

test_that("test print not started no title", {
  tmr <- tmr_timer()
  expect_output(tmr_print(tmr), "^\\[1\\] \"00:00:00\"$")
})

test_that("test print not started title no length", {
  tmr <- tmr_timer(title = "")
  expect_output(tmr_print(tmr), "^\\[1\\] \"00:00:00\"$")
})

test_that("test print not started with title", {
  tmr <- tmr_timer(title = "thing")
  expect_output(tmr_print(tmr), "^\\[1\\] \"00:00:00 \\[thing\\]\"$")
})
