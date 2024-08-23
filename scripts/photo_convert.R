# resize images to save space. Portrait need the out.width set to out.width='50%' in the chunk though
photos <- c("timestamp_settings_access.jpg",
            "timestamp_settings.jpg",
            "methods_mobile.jpg",
            "more_sections.jpg",
            "photos_mobile.jpg")

paths <- paste0(
  fs::path(here::here(),  "fig", "fieldwork", photos)
)

size = "777.6x1036.8!"


paths |>
  purrr::map(
    fpr::fpr_photo_resize_convert,
                              size = size,
                              path = fs::path("fig", "fieldwork", "resized")
    )

