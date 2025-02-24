library(CohortDiagnostics)

cli::cli_h1("Starting shiny server")
serverStr <- paste0(Sys.getenv("shinydbServer"), "/", Sys.getenv("shinydbDatabase"))
cli::cli_alert_info("Connecting to {serverStr}")
connectionDetails <- DatabaseConnector::createConnectionDetails(
  dbms = "postgresql",
  server = serverStr,
  port = Sys.getenv("shinydbPort"),
  user = "shinyproxy",
  password = Sys.getenv("shinydbPw")
)

cli::cli_h2("Loading schema")
CohortDiagnostics::launchDiagnosticsExplorer(
  connectionDetails = connectionDetails,
  resultsDatabaseSchema = "phenpheb25",
  aboutText = "Phenotype Phebruary 2025",
  runOverNetwork = TRUE,
  port = 3838  
)