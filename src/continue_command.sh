banner "continue"
## alternative (but it wont run failed specs)
## run_rspec --tag last_run_status:unknown
run_rspec --tag ~last_run_status:passed
