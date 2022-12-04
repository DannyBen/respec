watch="${args[--watch]}"

if [[ $watch ]]; then
  run_watch "respec fails"
else
  banner "failed specs"
  run_rspec --next-failure
fi
