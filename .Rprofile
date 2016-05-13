.First <- function(){
    options(
        repos = c(CRAN = "https://cran.rstudio.com"),
        browserNLdisabled = TRUE,
        deparse.max.lines = 2,
        help_type = "html",
        max.print = 200,
        repr.plot.width = 5,
        repr.plot.height = 5,
        repr.plot.res = 100,
        repr.plot.pointsize = 8,
        repr.plot.quality = 100,
        repr.plot.antialias = "default",
        jupyter.plot_mimetypes = "image/svg+xml"
    )

    # mac only
    if (Sys.info()["sysname"] == "Darwin" && interactive()) {
        options(device = "quartz")
        setHook(packageEvent("grDevices", "onLoad"),
                function(...) grDevices::quartz.options(
                    width = 3.5,
                    height = 3.5,
                    pointsize = 8
                ))
    }

}
