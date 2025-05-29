source("./_aux/aux_func.R")

v1 <- "https://play.library.utoronto.ca/watch/7eff451a81111cbc22bcc83edb324dfd"
v2 <- "https://play.library.utoronto.ca/watch/aff5b2f63cf1b1e7b7b2b768a692f6b9"
v3 <- "https://play.library.utoronto.ca/watch/cb22f19d809733aeeafee7674eada2d0"

s1 <- "./lec/w12_part1_prelec.pdf"
s2 <- "./lec/w12_part2_prelec.pdf"
s3 <- "./lec/w12_part3_prelec.pdf"

ps1 <- "./lec/w12_part1_inked.pdf"
ps2 <- "./lec/w12_part2_inked.pdf"
ps3 <- "./lec/w12_part3_inked.pdf"


ws <- "./worksheet/ECE421_Fall24-ws6.pdf"
ws_sol <- "./worksheet/ECE421_Fall24-ws6-sol.pdf"

ws10_l <- "./worksheet/w12-BoWang-UHN.pdf"
ws10_sol_l <- "https://play.library.utoronto.ca/watch/e7ca4a237c91646d16a2927c25d867e6"

w11_top <- "- Reinforcement Learning"
w11_rea <- "AIMA: 23.1-23.4"
w11_sli <- lec_part_ann(
  list(day = "Part 1", slides_link = s1, postnote_link = ps1, recording_link = v1), # nolint
  list(day = "Part 2", slides_link = s2, postnote_link = ps2, recording_link = v2), # nolint
  list(day = "Part 3", slides_link = s3, postnote_link = ps3, recording_link = v3) # nolint
)

w11_wsh <- join_with_break(
  "Guest Lecture by Professor Bo Wang",
  start_with_tab(glue::glue("- [slides]({ws10_l})")),
  start_with_tab(glue::glue("- [recording]({ws10_sol_l})"))
  )
w11_crw <- join_with_break(
  out_with_due_ann("A4", "./assignments/ECE421_Fall24-A4-handout.pdf", "Dec. 4, 11:59 PM"),
  "&emsp;- [A4 cover](./assignments/ECE421_Fall24-A4-cover.pdf)",
  "&emsp;- [A4 Python files](./assignments/ECE421_Fall24-A4-python-files.zip)",
  "&emsp;- [A4 Google Colab notebook](https://colab.research.google.com/drive/1o7FZADmCiz2dxeSQK2rYxEquP5Ie6s_x?usp=sharing)",
  "&emsp;- [A4 LATEX template](./assignments/ECE421_Fall24-A4-latex-template.zip)"
)