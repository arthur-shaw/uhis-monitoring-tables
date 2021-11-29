# =============================================================================
# Provide project parameters
# =============================================================================

report_dir <- ""

report_params <- list(
    # REPORT PERIOD: START AND END
    # for the dates, use the ISO 8601 format: YYYY-MM-DD
    # for example, "2021-11-25" for November 25, 2021
    report_start   = "",
    report_end     = "",
    # FOLDER FOR THE AUTO-SORT PROGRAM
    # the report draws from data gotten or created by the auto-sort program
    reject_proj_dir  = "",
    # NAME OF THE MAIN FILE
    # be sure to include the .dta extension.
    main_file_dta   = "UHIS_2021.dta"
)

# =============================================================================
# Vérifier les paramètres
# =============================================================================

# TODO
# - dates dans le bon format
# - fin après début
# - rejet_proj_dir existe
# - main_file_dta existe
# - dispose d'accès à l'espace de travail
# - sup_exclus est vide ou suit le bon format

# =============================================================================
# Create the report with the parameters provided above
# =============================================================================

rmarkdown::render(
    input = paste0(report_dir, "R/uhis_tables.Rmd"),
    output_dir = report_dir,
    params = report_params,
    encoding = "UTF-8"
)
