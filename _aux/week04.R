source("./_aux/aux_func.R")

v1 <- "https://play.library.utoronto.ca/watch/bfb0f871aa22a1a140da742ec6b2fff7"
v2 <- "https://play.library.utoronto.ca/watch/29dd1b799652311b3b28c07bcfb9dc20"
v3 <- "https://play.library.utoronto.ca/watch/c405e1dcf8732888f04dbe935ff17d69"

s1 <- "./lec/w04_part1_prelecture.pdf"
s2 <- "./lec/w04_part2_prelecture.pdf"
s3 <- "./lec/w04_part3_prelecture.pdf"

ps1 <- "./lec/w04_part1_inked.pdf"
ps2 <- "./lec/w04_part2_inked.pdf"
ps3 <- "./lec/w04_part3_inked.pdf"

ws <- "./worksheet/ECE421_Fall24-ws2.pdf"
ws_sol <- "./worksheet/ECE421_Fall24-ws2-sol.pdf"

w04_top <- "- Gradient Descent"
w04_rea <- "LFD: 3.3<br>DL: 8.3.1-8.3.3 (recommended)"
w04_sli <- lec_part_ann(
  list(day = "Part 1", slides_link = s1, postnote_link = ps1, recording_link = v1), # nolint
  list(day = "Part 2", slides_link = s2, postnote_link = ps2, recording_link = v2), # nolint
  list(day = "Part 3", slides_link = s3, postnote_link = ps3, recording_link = v3) # nolint
)
w04_wsh <- join_with_break(
  glue::glue("[Worksheet 2]({ws})"), start_with_tab(glue::glue("- [solution]({ws_sol})")) # nolint
)
w04_crw <- due_ann("A1")