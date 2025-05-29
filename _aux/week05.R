source("./_aux/aux_func.R")

v1 <- "https://play.library.utoronto.ca/watch/fe2163153bb791b2c99e67862b5da1e5"
v2 <- "https://play.library.utoronto.ca/watch/d7270074e1a9260cfc637963396659fb"

s1 <- "./lec/w05and06_inked.pdf"
s2 <- "./lec/w05and06_inked.pdf"

ps1 <- "./lec/w05and06_inked.pdf"
ps2 <- "./lec/w05and06_inked.pdf"

ws <- "./worksheet/ECE421_Fall24-ws3.pdf"
ws_sol <- "./worksheet/ECE421_Fall24-ws3-sol.pdf"

w05_top <- "- Unsupervised Learning<br> - Clustering, k-means clustering<br>- Density Estimation<br>- Mixture of Gaussians<br>- Hard-assignment learning of MoG<br>- EM: Soft assignment"
w05_rea <- "PRML: 9.1, 9.2"
w05_sli <- lec_part_ann(
  list(day = "Part 1", slides_link = s1, postnote_link = ps1, recording_link = v1), # nolint
  list(day = "Part 2", slides_link = s2, postnote_link = ps2, recording_link = v2) # nolint
)
w05_wsh <- join_with_break(
  glue::glue("[Worksheet 3]({ws})"), start_with_tab(glue::glue("- [solution]({ws_sol})")) # nolint
)
w05_crw <- join_with_break(
  out_with_due_ann("A2", "./assignments/ECE421_Fall24-A2-handout.pdf", "Oct. 18, 11:59 PM"),
  "&emsp;- [A2 cover](./assignments/ECE421_Fall24-A2-cover.pdf)",
  "&emsp;- [A2 Python files](./assignments/ECE421_Fall24-A2-python-files.zip)",
  "&emsp;- [A2 Google Colab notebook](https://colab.research.google.com/drive/1qFIAd84kNlCVimwCuhG4F4YO-0HRV9Yr?usp=sharing)",
  "&emsp;- [A2 LATEX template](./assignments/ECE421_Fall24-A2-latex-template.zip)"
  )