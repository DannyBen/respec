# RSpec Convenience Wrapper

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
