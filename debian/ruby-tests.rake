require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec) do |t|
  # net_http_compat requires network access
  t.pattern = FileList['spec/**/*_spec.rb'].exclude(/net_http_compat/)
end

task :default => :spec




