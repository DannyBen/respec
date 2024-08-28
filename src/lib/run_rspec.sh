run_rspec() {
  bundle exec rspec "$@"
  exit_code=$?
  [[ $exit_code -ne 0 ]] && bell
  return $exit_code
}
