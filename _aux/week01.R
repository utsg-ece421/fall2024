source("./_aux/aux_func.R")

v1 <- "https://play.library.utoronto.ca/watch/2b2091139eb962f0527dd78e968da87c"
v2 <- "https://play.library.utoronto.ca/watch/b35443e634d2809e789daa053c4722a1"
v3 <- "https://play.library.utoronto.ca/watch/84f01cba4d7468c039457160cd7958c7"

s1 <- "./lec/w01_part1_inked.pdf"
s2 <- "./lec/w01_part2_inked.pdf"
s3 <- "./lec/w01_part3_prelecture.pdf"

ps1 <- "./lec/w01_part1_inked.pdf"
ps2 <- "./lec/w01_part2_inked.pdf"
ps3 <- "./lec/w01_part3_inked.pdf"

w01_top <- "- Course Logistics<br>- Intro to ML<br>- Nearest Neighbors<br>- Linear Classification" # nolint
w01_rea <- "LFD: 1.1-1-2"
w01_sli <- lec_part_ann(
  list(day = "Part 1", slides_link = s1, postnote_link = ps1, recording_link = v1), # nolint
  list(day = "Part 2", slides_link = s2, postnote_link = ps2, recording_link = v2), # nolint
  list(day = "Part 3", slides_link = s3, postnote_link = ps3, recording_link = v3) # nolint
)
w01_wsh <- "No Tutorial"
w01_crw <- " "