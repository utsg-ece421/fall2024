source("./_aux/aux_func.R")

# empty
w13_top <- "- Course Review"
w13_rea <- " "
w13_sli <- join_with_break(
  "• Part 1: [vid](https://play.library.utoronto.ca/watch/f8ef09ff05b2af92b99954b771ebec39)", # nolint
  "• Part 2: [vid](https://play.library.utoronto.ca/watch/23e17655dcef4050cea6910184bf3244)", # nolint
  "• Part 3: [vid](https://play.library.utoronto.ca/watch/6d9dd9e91a4e46524890ac8520e1a906)" # nolint
)
w13_wsh <- join_with_break(
  glue::glue("[Sample final](./exams/ECE421_SampleFall24_v01.pdf)"), start_with_tab(glue::glue("- [solution](./exams/ECE421_SampleFall24_sol.pdf)")) # nolint
)
w13_crw <- due_ann("A4")