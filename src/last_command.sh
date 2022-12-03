min="${args[min]}"

watch="${args[--watch]}"

if [[ $watch ]]; then
  run_watch "respec last $min"
else
  banner "last $min minutes"
  reset_status

  # shellcheck disable=SC2046
  run_rspec $( (find . -name '*_spec.rb' -mmin -"$min" | grep .) || echo "-tnothing")
fi
