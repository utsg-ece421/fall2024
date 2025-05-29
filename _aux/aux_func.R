join_with_break <- function(...) {
  paste(..., sep = "<br>")
}

join_with_space <- function(...) {
  paste(..., sep = " ")
}

join_no_space <- function(...) {
  paste0(...)
}

smart_join <- function(..., iter = 2) {
  if (iter == 1) paste0(...) else join_with_break(...)
}

unify_day_format <- function(day) {
  # Normalize input
  normalized_day <- tolower(gsub("\\.", "", day))
  # Define mapping
  day_map <- c(
    mon = "Mon", monday = "Mon",
    tue = "Tue", tuesday = "Tue",
    wed = "Wed", wednesday = "Wed",
    thu = "Thu", thursday = "Thu",
    fri = "Fri", friday = "Fri",
    sat = "Sat", saturday = "Sat",
    sun = "Sun", sunday = "Sun"
  )
  # Return standardized form if available, else original
  return(ifelse(normalized_day %in% names(day_map), day_map[normalized_day], day))
}

start_with_tab <- function(text) {
  glue::glue("&emsp;{text}")
}

# Tentative release date (with tentative due date)
tent_out_with_due_ann <- function(name, link, date_release, due_date ) {
  glue::glue("🤞 [{name}]({link}) to be <span style='color: green;'>**out**</span> by {date_release}<br>&emsp;📆 Tentative Due on {due_date}")
}

# Tentative release date (without due date)
tent_out_no_due_ann <- function(name, link, date_release) {
  glue::glue("🤞 [{name}]({link}) to be <span style='color: green;'>**out**</span> by {date_release}<br>&emsp;No Submission is needed.")
}

# Coursework released (with due date)
out_with_due_ann <- function(name, link, date) {
  glue::glue("📢 [{name}]({link}) <span style='color: green;'>**out**</span><br>&emsp;📆 Due on {date}")
}

# Coursework released (without due date)
out_no_due_ann <- function(name, link) {
  glue::glue("📢 [{name}]({link}) <span style='color: green;'>**out**</span><br>&emsp;No Submission is needed.")
}

# Coursework released. just out. No descriptio at all
out_no_des_ann <- function(name, link) {
  glue::glue("📢 [{name}]({link}) <span style='color: green;'>**out**</span>")
}

# Coursework due
due_ann <- function(name) {
  glue::glue("⏰ {name} <span style='color: red;'>**due**</span>")
}

# posted on ...
posted_ann <- function(name) {
  glue::glue("📬 <span style='color: orange;'>**{name}**</span> posted")
}

video_out_ann <- function(name, link, des) {
  glue::glue("▶️ [{name}]({link}) <span style='color: green;'>**out**</span>")
}


check_ann <- function(where, with_tab = TRUE) {
  if (with_tab) {
    glue::glue("&emsp;🔎 Available on {where}")
  } else {
    glue::glue("🔎 Available on {where}")
  }
}

general_ann <- function(ann, with_tab = FALSE) {
  if (with_tab) {
    glue::glue("&emsp;- {ann}")
  } else {
    glue::glue("- {ann}")
  }
}






lec_part_ann <- function(...) {
  args <- list(...)
  text <- ""
  for (i in seq_along(args)) {
    if (("no_class" %in% names(args[[i]])) && (args[[i]]$no_class)) {
      new_text <- join_no_space(
        glue::glue("• {unify_day_format(args[[i]]$day)}"),
        glue::glue("<br>&emsp;- {args[[i]]$des}")
      )
    } else {
      new_text <- glue::glue("• {unify_day_format(args[[i]]$day)}: [pre]({args[[i]]$slides_link}), [post]({args[[i]]$postnote_link}), [vid]({args[[i]]$recording_link})")
      if ("des" %in% names(args[[i]])) {
        new_text <- join_no_space(
          new_text,
          glue::glue("<br>&emsp;- {args[[i]]$des}")
        )
      }
    }
    text <- smart_join(text, new_text, iter = i)
  }
  return(text)
}

lec_part_ann_csca67 <- function(...) {
  args <- list(...)
  text <- ""
  for (i in seq_along(args)) {
    if (("no_class" %in% names(args[[i]])) && (args[[i]]$no_class)) {
      new_text <- join_no_space(
        glue::glue("• {unify_day_format(args[[i]]$day)}"),
        glue::glue("<br>&emsp;- {args[[i]]$des}")
      )
    } else {
      new_text <- join_no_space(
        glue::glue("• [{unify_day_format(args[[i]]$day)}]"),
        glue::glue("({args[[i]]$slides_link})")
      )
      if ("des" %in% names(args[[i]])) {
        new_text <- join_no_space(
          new_text,
          glue::glue("<br>&emsp;- {args[[i]]$des}")
        )
      }
    }
    text <- smart_join(text, new_text, iter = i)
  }
  return(text)
}


tut_questions_ann <- function(...) {
  args <- list(...)
  text <- ""
  for (i in seq_along(args)) {
    new_text <- join_with_space(
      glue::glue("- **Sec. {args[[i]]$section} {args[[i]]$type}:**"),
      glue::glue("{args[[i]]$q_list}")
    )
    if ("des" %in% names(args[[i]])) {
      new_text <- join_no_space(
        new_text,
        glue::glue("<br>&emsp;- {args[[i]]$des}")
      )
    }
    text <- smart_join(text, new_text, iter = i)
  }
  return(text)
}