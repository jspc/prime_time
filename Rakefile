require 'rake'

task :default => [:test, :build]

desc "Run tests"
task :test do
  sh "rspec --format d --order random"
end

desc "Build gem"
task :build do
  sh "gem build primetime.gemspec"
end
