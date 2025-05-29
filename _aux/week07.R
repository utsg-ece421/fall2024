source("./_aux/aux_func.R")


ws <- "./worksheet/ECE421_Fall24-ws5.pdf"
ws_sol <- "./worksheet/ECE421_Fall24-ws5-sol.pdf"

w07_top <- "- Thanksgiving Day!<br>- Midterm Review"
w07_rea <- " "
w07_sli <- "• [Review](https://play.library.utoronto.ca/watch/51128e7a5d08010cdb1c2dd066405612)"
w07_wsh <- join_with_break(
  glue::glue("[Worksheet 5]({ws})"), start_with_tab(glue::glue("- [solution]({ws_sol})")) # nolint
)
w07_crw <- join_with_break(due_ann("A2"),
out_no_des_ann("Sample midterm", "./exams/ECE421_sample_midterm.pdf"),
  posted_ann("Sample midterm solution"),
  check_ann("Piazza", with_tab = TRUE))