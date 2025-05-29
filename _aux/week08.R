source("./_aux/aux_func.R")

v1 <- "https://play.library.utoronto.ca/watch/dc29b13be5c2fb3121c0a06e276819d2"
v2 <- "https://play.library.utoronto.ca/watch/9a338b77e5844d0ad913cb1fa6009252"

s1 <- "./lec/w08and10_part1_inked.pdf"
s2 <- "./lec/w05and06_inked.pdf"

ps1 <- "./lec/w08and10_part1_inked.pdf"
ps2 <- "./lec/w05and06_inked.pdf"

ws <- "./worksheet/ECE421_Fall24-ws4.pdf"
ws_sol <- "./worksheet/ECE421_Fall24-ws4-sol.pdf"


w08_top <- "- Deep Learning in Practice<br> - Dropout"
w08_rea <- "LFD: 7.2<br>DL: 7.12, 8.4, 8.5 (recommended)"
w08_sli <- join_with_break(
  "• [Midterm](./exams/ECE421_Fall24_Midterm.pdf)",
  lec_part_ann(list(day = "Part 1", slides_link = s1, postnote_link = ps1, recording_link = v1) # nolint
))
w08_wsh <- "Makeup lecture for LEC0101 due to Thanksgiving"
w08_crw <- join_with_break(
  "⏰ Midterm is on Monday",
  out_with_due_ann("A3", "ECE421_Fall24-A3-handout.pdf", "Nov. 15, 11:59 PM"),
  "&emsp;- [A3 cover](./assignments/ECE421_Fall24-A3-cover.pdf)",
  "&emsp;- [A3 Python files](./assignments/ECE421_Fall24-A3-python-files.zip)",
  "&emsp;- [A3 Google Colab notebook](https://colab.research.google.com/drive/1R_kzF4fKg72XTF_zys-Facq5LkiBaCH6?usp=sharing)",
  "&emsp;- [A3 LATEX template](./assignments/ECE421_Fall24-A3-latex-template.zip)"
  )