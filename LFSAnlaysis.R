> library(haven)
> library(tidyverse)
── Attaching packages ────────────────────────────────── tidyverse 1.3.2 ──
✔ ggplot2 3.4.0      ✔ purrr   1.0.1 
✔ tibble  3.1.8      ✔ dplyr   1.0.10
✔ tidyr   1.2.1      ✔ stringr 1.5.0 
✔ readr   2.1.3      ✔ forcats 0.5.2 
── Conflicts ───────────────────────────────────── tidyverse_conflicts() ──
✖ dplyr::filter() masks stats::filter()
✖ dplyr::lag()    masks stats::lag()
> View(Df)
> # understanding the data and columns
> glimpse(Df)
Rows: 90,353
Columns: 60
$ REC_NUM  <dbl> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22,…
$ SURVYEAR <dbl> 2020, 2020, 2020, 2020, 2020, 2020, 2020, 2020, 2020, 2020, 2020, 2020, 2020, …
$ SURVMNTH <dbl+lbl> 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,…
$ LFSSTAT  <dbl+lbl> 4, 3, 4, 1, 1, 4, 4, 2, 2, 1, 4, 2, 3, 3, 1, 1, 4, 1, 1, 4, 4, 2, 4, 4, 1,…
$ PROV     <dbl+lbl> 59, 35, 35, 13, 35, 12, 46, 35, 24, 24, 24, 47, 24, 13, 48, 35, 35, 59, 24…
$ CMA      <dbl+lbl> 0, 0, 3, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0,…
$ AGE_12   <dbl+lbl> 10,  3,  1, 10,  7, 12,  5,  3,  5,  7, 12,  7,  8, 10,  5,  5, 12,  4,  8…
$ AGE_6    <dbl+lbl> NA,  6,  1, NA, NA, NA, NA,  5, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA…
$ SEX      <dbl+lbl> 1, 1, 1, 2, 2, 1, 1, 2, 2, 1, 1, 2, 2, 2, 1, 1, 1, 1, 2, 2, 2, 1, 2, 2, 2,…
$ MARSTAT  <dbl+lbl> 5, 6, 6, 2, 4, 6, 1, 6, 1, 2, 1, 1, 6, 1, 2, 1, 1, 1, 1, 1, 3, 2, 1, 1, 4,…
$ EDUC     <dbl+lbl> 0, 2, 1, 4, 4, 0, 5, 5, 4, 3, 5, 2, 2, 2, 4, 4, 1, 2, 4, 2, 2, 4, 3, 1, 1,…
$ MJH      <dbl+lbl> NA, NA, NA,  1,  2, NA, NA,  1,  1,  1, NA,  1, NA, NA,  1,  1, NA,  1,  1…
$ EVERWORK <dbl+lbl>  1,  1,  3, NA, NA,  2,  1, NA, NA, NA,  2, NA,  1,  1, NA, NA,  2, NA, NA…
$ FTPTLAST <dbl+lbl>  1,  1, NA, NA, NA, NA,  1, NA, NA, NA, NA, NA,  1,  1, NA, NA, NA, NA, NA…
$ COWMAIN  <dbl+lbl>  2,  2, NA,  2,  1, NA,  6,  6,  6,  2, NA,  2,  2,  2,  2,  2, NA,  2,  2…
$ IMMIG    <dbl+lbl> 3, 3, 1, 3, 3, 2, 1, 3, 3, 3, 3, 3, 3, 3, 2, 3, 3, 1, 3, 3, 2, 3, 1, 3, 3,…
$ NAICS_21 <dbl+lbl>  6, 18, NA, 10, 16, NA, 11, 17, 17, 15, NA, 20, 15, 14, 18, 14, NA,  7, 17…
$ NOC_10   <dbl+lbl>  8,  7, NA,  7,  5, NA,  8,  4,  4,  8, NA,  7,  2,  2,  8,  8, NA, 10,  5…
$ NOC_43   <dbl+lbl> 36, 34, NA, 32, 25, NA, 36, 17, 17, 38, NA, 34,  7,  9, 35, 35, NA, 42, 24…
$ YABSENT  <dbl+lbl> NA, NA, NA, NA, NA, NA, NA,  0,  0, NA, NA,  0, NA, NA, NA, NA, NA, NA, NA…
$ WKSAWAY  <dbl> NA, NA, NA, NA, NA, NA, NA, 4, 4, NA, NA, 3, NA, NA, NA, NA, NA, NA, NA, NA, N…
$ PAYAWAY  <dbl+lbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,  2, NA, NA, NA, NA, NA, NA, NA…
$ UHRSMAIN <dbl> NA, NA, NA, 8.0, 35.0, NA, NA, 20.0, 27.0, 40.0, NA, 8.0, NA, NA, 40.0, 40.0, …
$ AHRSMAIN <dbl> NA, NA, NA, 8, 35, NA, NA, 0, 0, 40, NA, 0, NA, NA, 36, 50, NA, 48, 10, NA, NA…
$ FTPTMAIN <dbl+lbl> NA, NA, NA,  2,  1, NA, NA,  2,  2,  1, NA,  2, NA, NA,  1,  1, NA,  1,  1…
$ UTOTHRS  <dbl> NA, NA, NA, 8.0, 38.0, NA, NA, 20.0, 27.0, 40.0, NA, 8.0, NA, NA, 40.0, 40.0, …
$ ATOTHRS  <dbl> NA, NA, NA, 8, 38, NA, NA, 0, 0, 40, NA, 0, NA, NA, 36, 50, NA, 48, 10, NA, NA…
$ HRSAWAY  <dbl> NA, NA, NA, 0.0, 0.0, NA, NA, NA, NA, 0.0, NA, NA, NA, NA, 0.0, 0.0, NA, 0.0, …
$ YAWAY    <dbl+lbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,  4…
$ PAIDOT   <dbl> NA, NA, NA, 0, 0, NA, NA, NA, NA, 0, NA, NA, NA, NA, 0, 9, NA, 8, 0, NA, NA, N…
$ UNPAIDOT <dbl> NA, NA, NA, 0, 0, NA, NA, NA, NA, 0, NA, NA, NA, NA, 0, 1, NA, 0, 0, NA, NA, N…
$ XTRAHRS  <dbl> NA, NA, NA, 0, 0, NA, NA, NA, NA, 0, NA, NA, NA, NA, 0, 10, NA, 8, 0, NA, NA, …
$ WHYPT    <dbl+lbl> NA, NA, NA,  5, NA, NA, NA,  5,  2, NA, NA,  6, NA, NA, NA, NA, NA, NA, NA…
$ TENURE   <dbl> NA, NA, NA, 240, 176, NA, NA, 16, 171, 202, NA, 6, NA, NA, 100, 160, NA, 33, 2…
$ PREVTEN  <dbl> 1, 77, NA, NA, NA, NA, 48, NA, NA, NA, NA, NA, 7, 6, NA, NA, NA, NA, NA, NA, N…
$ HRLYEARN <dbl> NA, NA, NA, 14.25, 27.50, NA, NA, NA, NA, 15.00, NA, 17.20, NA, NA, 33.65, 43.…
$ UNION    <dbl+lbl> NA, NA, NA,  3,  1, NA, NA, NA, NA,  1, NA,  3, NA, NA,  3,  1, NA,  3,  1…
$ PERMTEMP <dbl+lbl> NA, NA, NA,  4,  1, NA, NA, NA, NA,  1, NA,  1, NA, NA,  1,  1, NA,  1,  1…
$ ESTSIZE  <dbl+lbl> NA, NA, NA,  3,  3, NA, NA, NA, NA,  2, NA,  1, NA, NA,  2,  3, NA,  3,  1…
$ FIRMSIZE <dbl+lbl> NA, NA, NA,  4,  4, NA, NA, NA, NA,  2, NA,  1, NA, NA,  4,  4, NA,  3,  1…
$ DURUNEMP <dbl> NA, 4, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, 6, 3, NA, NA, NA, NA, NA, NA, N…
$ FLOWUNEM <dbl+lbl> NA,  1, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,  3,  1, NA, NA, NA, NA, NA…
$ UNEMFTPT <dbl+lbl> NA,  1, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,  1,  1, NA, NA, NA, NA, NA…
$ WHYLEFTO <dbl+lbl>  4,  4, NA, NA, NA, NA,  0, NA, NA, NA, NA, NA,  0,  4, NA, NA, NA, NA, NA…
$ WHYLEFTN <dbl+lbl> 12, 12, NA, NA, NA, NA,  0, NA, NA, NA, NA, NA,  6, 12, NA, NA, NA, NA, NA…
$ DURJLESS <dbl> 8, 2, NA, NA, NA, 103, 2, NA, NA, NA, 240, NA, 2, 2, NA, NA, 240, NA, NA, 40, …
$ AVAILABL <dbl+lbl> NA,  2, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,  2,  2, NA, NA, NA, NA, NA…
$ LKPUBAG  <dbl+lbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA…
$ LKEMPLOY <dbl+lbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,  1, NA, NA, NA, NA, NA, NA…
$ LKRELS   <dbl+lbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,  1, NA, NA, NA, NA, NA, NA…
$ LKATADS  <dbl+lbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,  1, NA, NA, NA, NA, NA, NA…
$ LKANSADS <dbl+lbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,  1, NA, NA, NA, NA, NA, NA…
$ LKOTHERN <dbl+lbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA…
$ PRIORACT <dbl+lbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,  1, NA, NA, NA, NA, NA, NA…
$ YNOLOOK  <dbl+lbl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA…
$ TLOLOOK  <dbl+lbl> NA,  2, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,  2, NA, NA, NA, NA, NA…
$ SCHOOLN  <dbl+lbl>  1,  1,  3,  1,  1, NA,  1,  1,  1,  1, NA,  1,  1,  1,  1,  1, NA,  1,  1…
$ EFAMTYPE <dbl+lbl>  1, 11, 18,  8, 15,  1,  8,  8,  9,  8, 11, 10,  1,  5,  6,  3,  3,  6,  2…
$ AGYOWNK  <dbl+lbl> NA, NA, NA, NA,  4, NA, NA, NA,  1, NA, NA,  4, NA, NA,  1,  1, NA,  1, NA…
$ FINALWT  <dbl> 239, 337, 604, 85, 418, 193, 184, 134, 724, 117, 324, 101, 322, 162, 159, 387,…
> head(Df$EDUC)
<labelled<double>[6]>: Highest educational attainment
[1] 0 2 1 4 4 0

Labels:
 value                                label
     0                         0 to 8 years
     1                     Some high school
     2                 High school graduate
     3                   Some postsecondary
     4 Postsecondary certificate or diploma
     5                    Bachelor's degree
     6              Above bachelor's degree

> mean(Df$HRLYEARN, na.rm = TRUE)
[1] 30.38508
> #consider education categories and hourly earnings. Creating 3 sets. EDUC(2), EDUC(4), EDUC(5)
> EDUC2 <- Df %>% filter(EDUC > 1 & EDUC < 3)
> View(EDUC2)
> EDUC4 <- Df %>% filter(EDUC > 3 & EDUC < 5)
> EDUC5 <- Df %>% filter(EDUC > 4 & EDUC < 6)
> mean(EDUC2$HRLYEARN, na.rm = TRUE)
[1] 24.04306
> mean(EDUC4$HRLYEARN, na.rm = TRUE)
[1] 29.57304
> mean(EDUC5$HRLYEARN, na.rm = TRUE)
[1] 36.83722
> # We have uncovered discrepancies in hourly wages based on education
> # There is a 23.00% increase in hourly wages with a College Diploma versus High School education
> # There is a 24.56% increase in hourly wage with a Bachelor's Degree compared to a College Diploma
> # consider what tenure does to hourly earnings.
> ggplot(Df, aes(x= TENURE, y = HRLYEARN)) + labs(x = "Tenure") + labs(y = "Hourly Earnings") + geom_point()
Warning message:
Removed 52836 rows containing missing values (`geom_point()`). 
> # Conclusions: Seeing that there are many different job fields we expect such an outcome.
> head(Df$UNION)
<labelled<double>[6]>: Union status, employees only
[1] NA NA NA  3  1 NA

Labels:
 value                                                                label
     1                                                         Union member
     2 Not a member but covered by a union contract or collective agreement
     3                                                        Non-unionized
> # we can consider unionized and non-unionized contracts and how they differ in wages.
> #consider UNION(1) and UNION(2) as unionzies contracts
> Unionized <- Df %>% filter(UNION <3)
> NonUnionized <- Df %>% filter(UNION > 2)
> mean(Unionized$HRLYEARN, na.rm = TRUE)
[1] 32.97052
> mean(NonUnionized$HRLYEARN, na.rm = TRUE)
[1] 28.85276
> # We have uncovered that on average unionzed workers make 4 dollars and 12 cents more per hour
> # There is a 14.27% Union Premium
> ggplot(Unionized, aes(x = HRLYEARN)) + labs(x = "Hourly Wages") + geom_freqpoly()
`stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
> ggplot(Unionized, aes(x = HRLYEARN)) + labs(x = "Hourly Wages") + geom_histogram()
`stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
> ggplot(NonUnionized, aes(x = HRLYEARN)) + labs(x = "Hourly Wages") + geom_histogram()
`stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
> # We see usign the plots that nonunionzied is more right-skewed than unionized
