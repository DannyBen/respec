# Respec - RSpec Convenience Wrapper

## Usage

```
  respec all            Run specs normally
  respec focus          Run specs tagged with :focus
  respec only SEARCH    Run specs on files matching SEARCH
  respec except SEARCH  Run specs except on files matching SEARCH
  respec last [N]       Run specs modified in the last N minutes [10]
  respec errors         Run the last failed specs
  respec continue       Continue from last run
  respec reset          Delete the status file
  respec -h, --help     Show this message
  respec -v, --version  Show version number
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
