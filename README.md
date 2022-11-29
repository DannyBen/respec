# Respec - RSpec Convenience Wrapper

## Usage

```
Usage:
  respec all            Run specs normally
  respec only SEARCH    Run specs on files matching SEARCH
  respec focus          Run specs tagged with :focus
  respec last [N]       Run specs modified in the last N minutes [10]
  respec errors         Run the last failed specs
  respec continue       Continue from last run
  respec reset          Delete the persistence file
  respec -h, --help     Show this message
  respec -v, --version  Show version number
```

## Setup 

Update the following files in your repository:

```ruby
# spec/spec_helper.rb
RSpec.configure do |config|
  config.example_status_persistence_file_path = 'spec/persist.txt'
end
```

```bash
# .gitignore
spec/persist.txt
```

```bash
# .rspec
--require spec_helper
--color
--format documentation
--fail-fast
```
