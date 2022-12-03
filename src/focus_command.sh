watch="${args[--watch]}"

if [[ $watch ]]; then
  run_watch "respec focus"
else
  banner "focus"
  run_rspec --tag focus
fi
