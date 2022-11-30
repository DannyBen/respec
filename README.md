# Respec - RSpec Convenience Wrapper

![Version](https://img.shields.io/badge/version-0.1.0-blue.svg)
[![Test](https://github.com/DannyBen/respec/actions/workflows/test.yml/badge.svg)](https://github.com/DannyBen/respec/actions/workflows/test.yml)

### Installing using the setup script

This setup script will download the respec executable to `/usr/local/bin/` and
install an autocomplete script in the bash completions directory.

```shell
$ curl -Ls get.dannyb.co/respec/setup | bash
```

Feel free to inspect the [setup script](setup) before running.


### Installing manually

Download the [respec](respec) script to `/usr/local/bin/` or anywhere in your
`PATH`, and make it executable.


## Usage

```
Usage:
  respec COMMAND

Commands:
  all           Run full specs
  focus         Run specs tagged with :focus
  only          Run specs on files matching a pattern
  except        Run specs and exclude files matching a pattern
  last          Run specs on files modified in the last N minutes
  fails         Run the last failed specs
  continue      Continue from where the last run stopped
  reset         Delete the status file
  watch         Run specs marked with :focus when any *.rb file changes
  completions   Echo completions function
```

## Setup 

Update the following files in your repository:

```ruby
# spec/spec_helper.rb
RSpec.configure do |config|
  config.example_status_persistence_file_path = 'spec/status.txt'
end
```

```bash
# .gitignore
spec/status.txt
```

```bash
# .rspec
--require spec_helper
--color
--format documentation
--fail-fast
```
