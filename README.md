# CohortDiagnostics explorer

This docker image is designed for hosting on results.ohdsi.org or similar ShinyProxy based platforms. It contains CohortDiagnostics results for Phenotype Phebruary 2025

To adapt for your own usage you will need to replace the default file [MergedCohortDiagnosticsData.sqlite](data%2FMergedCohortDiagnosticsData.sqlite)
with your own shiny, or update the [config.yml](config.yml) file to match your database settings.

