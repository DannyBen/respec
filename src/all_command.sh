watch="${args[--watch]}"

if [[ $watch ]]; then
  run_watch "respec all"
else
  reset_status
  banner "all"
  run_rspec
fi
