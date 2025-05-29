source("./_aux/aux_func.R")

v1 <- "https://play.library.utoronto.ca/watch/e01785a0b7508b5b703328bab687673c"
v2 <- "https://play.library.utoronto.ca/watch/89be856060b2c062a218c1542f47e790"

s1 <- "./lec/w08and10_part1_inked.pdf"
s2 <- "./lec/w08and10_part2_inked.pdf"

ps1 <- "./lec/w08and10_part1_inked.pdf"
ps2 <- "./lec/w08and10_part2_inked.pdf"

ws <- "./worksheet/w10_AlbiCelaj_DeepGenomics.pdf"
ws_sol <- "https://play.library.utoronto.ca/watch/a01567b6c856fa212abe5f6e25c19d2f"

w09_top <- "- Convolutional Nets<br>- Recurrent Nets<br>- Translation & Seq2Seq Models<br>- Language Models<br>- LSTM<br>- Transformers & Attention"
w09_rea <- "*CNN*: PRML 5.5.6, DL 9;<br>*RNN*: DL 10.1, 10.2;<br>*Seq2Seq*: DL 10.4;<br>*LSTM*: DL 10.10;<br>*Transformers & Attention*: SLP 9"
w09_sli <-  lec_part_ann(
  list(day = "Part 1", slides_link = s1, postnote_link = ps1, recording_link = v1), # nolint
  list(day = "Part 2", slides_link = s2, postnote_link = ps2, recording_link = v2) # nolint
)
w09_wsh <- join_with_break(
  "Guest Lecture by Albi Celaj",
  start_with_tab(glue::glue("- [slides]({ws})")),
  start_with_tab(glue::glue("- [recording]({ws_sol})"))
)
w09_crw <- " "