search="${args[search]}"
watch="${args[--watch]}"

if [[ $watch ]]; then
  run_watch "respec except $search"
else
  banner "except *$search*"
  reset_status

  # shellcheck disable=SC2046
  run_rspec $( (find . -name '*_spec.rb' -not -path "*$search*" | grep .) || echo "-tnothing")
fi