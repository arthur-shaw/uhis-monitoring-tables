
<!-- README.md is generated from README.Rmd. Please edit that file -->

# uhis\_monitoring\_tables

<!-- badges: start -->
<!-- badges: end -->

# Objective

This program aims to create a monitoring report for two classes of
indicators:

-   Progress
-   Quality

# Usage

## Setup

During initial installation, provide the parameters needed by the
program. These parameters can be found in two groups under the
`Fournir les paramètres du projet` heading:

-   Report folder
-   Report parameters

``` r
# =============================================================================
# Provide project parameters
# =============================================================================

report_dir <- "C:/Users/wb393438/Uganda AAS-UNPS/monitoring-tables/"

report_params <- list(
    # REPORT PERIOD: START AND END
    # for the dates, use the ISO 8601 format: YYYY-MM-DD
    # for example, "2021-11-25" pour November 25, 2021
    report_start   = "2021-10-01",
    report_end     = "2021-11-01",
    # FOLDER FOR THE AUTO-SORT PROGRAM
    # the report draws from data gotten or created by the auto-sort program
    reject_proj_dir  = "C:/Users/wb393438/Uganda AAS-UNPS/auto-sort/",
    # NAME OF THE MAIN FILE
    # be sure to include the .dta extension.
    main_file_dta   = "UHIS_2021.dta"
)
```

These parameters are explained in further detail below.

### Report folder

In order to create the report, the program needs to know where the
project root folder is located.

In the `report_dir` parameter, provide this path. In doing so, follow
these guidelines:

-   Use `/` instead of `\`
-   Put `/` at the end of the path (e.g., `C:/mon/chemin/`)

### Report parameters

#### Report dates

Specify the start and end dates of the report: `report_start` and
`report_end`, respectively.

For the dates use the ISO 8601 format: `DDDD-MM-DD`.

``` r
# REPORT PERIOD: START AND END
# for the dates, use the ISO 8601 format: YYYY-MM-DD
# for example, "2021-11-25" pour November 25, 2021
report_start   = "2021-10-01",
report_end     = "2021-11-01",
```

#### Auto-sort folder

Because the report will draw from the auto-sort program’s data, one must
specify the path to the root folder of the auto-sort project.

## Use

### Use the auto-sort program

Because the report uses data acquired or created by the auto-sort
program, run the auto-sort program before running the report creation
program. This will provide the report the latest data.

### Modify report dates

Before the creating the report, modify the report start and end dates.
This informtion is used to filter data to cases completed in this
period.

### Run the program

To do so:

-   Open `monitoring-tables.Rproj`
-   Open `create_monitoring_tables.R`
-   Run the program by clicking on the `Source` button
