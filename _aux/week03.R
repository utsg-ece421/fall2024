source("./_aux/aux_func.R")

v1 <- "https://play.library.utoronto.ca/watch/c30afba938e375a2c60fcb4eb5249bd5"
v2 <- "https://play.library.utoronto.ca/watch/3bcb2eaf9fc0c01168367e8ffa5b6cd9"
v3 <- "https://play.library.utoronto.ca/watch/4da2303501f6a84f40559abafa2383a6"

s1 <- "./lec/w03_part1_prelecture.pdf"
s2 <- "./lec/w03_part2_prelecture.pdf"
s3 <- "./lec/w03_part3_prelecture.pdf"

ps1 <- "./lec/w03_part1_inked.pdf"
ps2 <- "./lec/w03_part2_inked.pdf"
ps3 <- "./lec/w03_part3_inked.pdf"


ws <- "./worksheet/ECE421_Fall24-ws1.pdf"
ws_sol <- "./worksheet/ECE421_Fall24-ws1-sol.pdf"



w03_top <- "- Logistic Regression"

w03_rea <- "LFD: 3.3"

w03_sli <- lec_part_ann(
  list(day = "Part 1", slides_link = s1, postnote_link = ps1, recording_link = v1), # nolint
  list(day = "Part 2", slides_link = s2, postnote_link = ps2, recording_link = v2), # nolint
  list(day = "Part 3", slides_link = s3, postnote_link = ps3, recording_link = v3) # nolint
)

w03_wsh <- join_with_break(
  glue::glue("[Worksheet 1]({ws})"), start_with_tab(glue::glue("- [solution]({ws_sol})")) # nolint
)

w03_crw <- " "