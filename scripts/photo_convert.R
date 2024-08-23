# resize a portrait image to display nicely in report
photos <- c("timestamp_settings.jpeg",
            "methods_mobile.jpg",
            "more_sections.jpg",
            "photos_mobile.jpg")

paths <- paste0(
  fs::path(here::here(),  "fig", "fieldwork", photos)
)

paths |>
  purrr::map(
    fpr::fpr_photo_resize_convert,
                              size = "777.6x1036.8!",
                              path = fs::path("fig", "fieldwork")
    )

