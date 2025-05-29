source("./_aux/aux_func.R")


v1 <- "https://play.library.utoronto.ca/watch/4bd1d505c87db519cf558d4aeeb96877"
v2 <- "https://play.library.utoronto.ca/watch/45321bc5daeee08796eac327ce9cd9c9"
v3 <- "https://play.library.utoronto.ca/watch/7ff04f0cd3f02e2e37c3b30a3891693f"

s1 <- "./lec/w02_part1_prelecture.pdf"
s2 <- "./lec/w02_part2_prelecture.pdf"
s3 <- "./lec/w02_part3_prelecture.pdf"

ps1 <- "./lec/w02_part1_inked (1).pdf"
ps2 <- "./lec/w02_part2_inked.pdf"
ps3 <- "./lec/w02_part3_inked.pdf"


w02_top <- " - Linear Regression<br>- Regularization"

w02_rea <- "LFD: 3.2.1, 3.4.1<br>Appendix B"

w02_sli <- lec_part_ann(
  list(day = "Part 1", slides_link = s1, postnote_link = ps1, recording_link = v1), # nolint
  list(day = "Part 2", slides_link = s2, postnote_link = ps2, recording_link = v2), # nolint
  list(day = "Part 3", slides_link = s3, postnote_link = ps3, recording_link = v3) # nolint
)

w02_wsh <- "Makeup lecture for LEC0101 due to Labour Day"

w02_crw <- join_with_break(
  out_with_due_ann("A1", "./assignments/ECE421_Fall24-A1-handout.pdf", "September 26, 11:59 PM"),
  "&emsp;- [A1 cover](./assignments/ECE421_Fall24-A1-cover.pdf)",
  "&emsp;- [A1 Google Colab notebook](https://colab.research.google.com/drive/1vEWXOyw_x2c3fM-VR0q4DYeB0m3DJyiK?usp=sharing)"
)