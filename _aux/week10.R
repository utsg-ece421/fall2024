source("./_aux/aux_func.R")

v1 <- "https://play.library.utoronto.ca/watch/c4c72b760be24f5e9f78fb37c4343946"
v2 <- "https://play.library.utoronto.ca/watch/b490a655f0a271c37527fb3da5c9dbf7"
v3 <- "https://play.library.utoronto.ca/watch/56030b34b06b8b38677ab0239e19bfb3"

s1 <- "./lec/w11_part1_prelec.pdf"
s2 <- "./lec/w11_part2_prelec.pdf"
s3 <- "./lec/w11_part3_prelec.pdf"

ps1 <- "./lec/w11_part1_inked.pdf"
ps2 <- "./lec/w11_part2_inked.pdf"
ps3 <- "./lec/w11_part3_inked.pdf"


ws <- "./worksheet/ECE421_Fall24-ws6.pdf"
ws_sol <- "./worksheet/ECE421_Fall24-ws6-sol.pdf"

ws09_l <- "./worksheet/w11_Shreshth_Gandhi_Vivo.pdf"
ws09_sol_l <- "https://play.library.utoronto.ca/watch/ce09bfc5021aefcb033d01299b9280a2"

w10_top <- "- Markov Decision Process"
w10_rea <- "AIMA: 16"
w10_sli <- lec_part_ann(
  list(day = "Part 1", slides_link = s1, postnote_link = ps1, recording_link = v1), # nolint
  list(day = "Part 2", slides_link = s2, postnote_link = ps2, recording_link = v2), # nolint
  list(day = "Part 3", slides_link = s3, postnote_link = ps3, recording_link = v3) # nolint
)

w10_wsh <- join_with_break(
  glue::glue("[Worksheet 6]({ws})"), start_with_tab(glue::glue("- [solution]({ws_sol})")),
  "Guest Lecture by Shreshth Gandhi",
  start_with_tab(glue::glue("- [slides]({ws09_l})")),
  start_with_tab(glue::glue("- [recording]({ws09_sol_l})"))
)

w10_crw <- join_with_break(
  due_ann("A3")
)