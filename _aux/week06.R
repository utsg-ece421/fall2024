source("./_aux/aux_func.R")



v1 <- "https://play.library.utoronto.ca/watch/fe2163153bb791b2c99e67862b5da1e5"
v2 <- "https://play.library.utoronto.ca/watch/9a338b77e5844d0ad913cb1fa6009252"

s1 <- "./lec/w05and06_inked.pdf"
s2 <- "./lec/w05and06_inked.pdf"

ps1 <- "./lec/w05and06_inked.pdf"
ps2 <- "./lec/w05and06_inked.pdf"

ws <- "./worksheet/ECE421_Fall24-ws4.pdf"
ws_sol <- "./worksheet/ECE421_Fall24-ws4-sol.pdf"




w06_top <- "- Deep Learning<br> - Neural Networks<br> - Backpropagation"

w06_rea <- "LFD: Sec 7.1, 7.2<br>DL: Ch 14"

w06_sli <- lec_part_ann(
  list(day = "Part 1", slides_link = s1, postnote_link = ps1, recording_link = v1), # nolint
  list(day = "Part 2", slides_link = s2, postnote_link = ps2, recording_link = v2) # nolint
)

w06_wsh <- join_with_break(
  glue::glue("[Worksheet 4]({ws})"), start_with_tab(glue::glue("- [solution]({ws_sol})")) # nolint
)

w06_crw <- " "