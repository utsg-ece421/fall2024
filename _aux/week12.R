source("./_aux/aux_func.R")

v1 <- "https://play.library.utoronto.ca/watch/e27c9e7feebf83c3acc11bc04c3d0c0b"
v2 <- "https://play.library.utoronto.ca/watch/e27c9e7feebf83c3acc11bc04c3d0c0b"
v3 <- "https://play.library.utoronto.ca/watch/ad10ad8fbdd68a9f3f50e05bd8265916"

s1 <- "./lec/w13_part0_prelec.pdf"
s2 <- "./lec/w13_part1-2_prelec.pdf"
s3 <- "./lec/w13_part3_inked.pdf"

ps1 <- "./lec/w13_part0_inked.pdf"
ps2 <- "./lec/w13_part1-2_inked.pdf"
ps3 <- "./lec/w13_part3_inked.pdf"


ws <- "./worksheet/ECE421_Fall24-ws7.pdf"
ws_sol <- "./worksheet/ECE421_Fall24-ws7-sol.pdf"

w12_top <- "- Reinforcement Learning, cont'd"
w12_rea <- "AIMA: 23.1-23.4"
w12_sli <- lec_part_ann(
  list(day = "Part 1", slides_link = s1, postnote_link = ps1, recording_link = v1), # nolint
  list(day = "Part 2", slides_link = s2, postnote_link = ps2, recording_link = v2), # nolint
  list(day = "Part 3", slides_link = s3, postnote_link = ps3, recording_link = v3) # nolint
)
w12_wsh <- join_with_break(
  glue::glue("[Worksheet 7]({ws})"), start_with_tab(glue::glue("- [solution]({ws_sol})")) # nolint
)
w12_crw <- " "