min="${args[min]}"

watch="${args[--watch]}"
repeat="${args[--repeat]}"

if [[ $watch ]]; then
  run_watch "respec last $min"
elif [[ $repeat ]]; then
  run_repeat respec last "$min"
else
  banner "last $min minutes"
  reset_status

  # shellcheck disable=SC2046
  run_rspec $( (find . -name '*_spec.rb' -mmin -"$min" | grep .) || echo "-tnothing")
fi
