filter_spec_helper_config() {
  regex="example_status_persistence_file_path.*=.*$RESPEC_STATUS_FILE"

  if [[ ! -f "$RESPEC_HELPER_PATH" ]]; then
    echo "Unable to find spec_helper ($RESPEC_HELPER_PATH)"
    return
  fi

  if ! grep -q "$regex" "$RESPEC_HELPER_PATH"; then
    echo "This command requires configuration in these files:"
    echo
    magenta "# $RESPEC_HELPER_PATH"
    echo "RSpec.configure do |config|"
    echo "  config.example_status_persistence_file_path = '$RESPEC_STATUS_FILE'"
    echo "end"
    echo
    magenta "# .gitignore"
    echo "$RESPEC_STATUS_FILE"
    return
  fi
}