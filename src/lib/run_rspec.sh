run_rspec() {
  bundle exec rspec "$@" || bell
}
