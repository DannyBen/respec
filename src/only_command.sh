search="${args[search]}"
banner "only *$search*"
reset_status

# shellcheck disable=SC2046
run_rspec $( (find . -name '*_spec.rb' -path "*$search*" | grep .) || echo "-tnothing")
