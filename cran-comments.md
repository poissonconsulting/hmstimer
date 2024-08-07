## R CMD check results

0 errors | 0 warnings | 0 notes

## Fixed CRAN Problems

Version: 0.2.0 
Check: tests 
Result: ERROR 
     Running 'testthat.R' [4s]
    Running the tests in 'tests/testthat.R' failed.
    Complete output:
     > library(testthat)
     > library(hmstimer)
     > 
     > test_check("hmstimer")
     [1] "07:26:52 (+00:00:00 => 07:26:52)"
     [1] "07:26:51 (+00:00:01 => 07:26:52)"
     [ FAIL 1 | WARN 0 | SKIP 0 | PASS 103 ]
     
     == Failed tests ================================================================
     -- Failure (test-print.R:7:3): test tmr_print output ---------------------------
     `output` does not match "07:26:50 (+00:00:01 => 07:26:51)".
     Actual value: "[1] "07:26:51 (+00:00:01 => 07:26:52)""
     Backtrace:
     x
     1. \-testthat::expect_match(...) at test-print.R:7:2
     2. \-testthat:::expect_match_(...)
     
     [ FAIL 1 | WARN 0 | SKIP 0 | PASS 103 ]
     Error: Test failures
     Execution halted 
Flavor: r-oldrel-windows-ix86+x86_64
