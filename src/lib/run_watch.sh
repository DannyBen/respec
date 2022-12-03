run_watch() {
  filewatcher --immediate '**/*.rb' "clear ; $@"
}
