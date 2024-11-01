run_rspec() {
  set +e
  bundle exec rspec "$@"
  exit_code=$?
  set -e

  [[ $exit_code -ne 0 ]] && bell
  return $exit_code
}
