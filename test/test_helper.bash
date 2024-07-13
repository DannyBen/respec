source approvals.bash
PATH="$PATH:../"
cli=respec

# Stub some commands:
# - rspec and bundler: for CI, since they are not installed there
# - bundle and filewatcher: to avoid running them
# - clear: to avoid clearing the screen on --repeat
rspec()       { printf "[stubbed] \$ rspec %s" "$*"; }
bundler()     { printf "[stubbed] \$ bundler %s" "$*"; }
bundle()      { printf "[stubbed] \$ bundle %s" "$*"; }
filewatcher() { printf "[stubbed] \$ filewatcher %s" "$*"; }
export -f rspec bundle bundler filewatcher
export CLEAR="echo [stubbed] $ clear"

# Functions for before/after
set_bad_helper() {
  # Set up a misconfigured spec_helper
  export RESPEC_HELPER_PATH="fixtures/misconfigured_spec_helper.rb"
  export RESPEC_STATUS_FILE="fixtures/spec/status.txt"
}

set_good_helper() {
  # Set up a properly configured spec_helper
  export RESPEC_HELPER_PATH="fixtures/spec_helper.rb"
  export RESPEC_STATUS_FILE="fixtures/spec/status.txt"
}

unset_helper() {
  unset RESPEC_HELPER_PATH
  unset RESPEC_STATUS_FILE  
}

# Start clean
unset_helper

