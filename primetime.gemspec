Gem::Specification.new do |s|
  s.name = "primetime"
  s.version = "1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["jspc"]
  s.date = "2013-10-30"
  s.description = "Tables of prime numbers"
  s.summary = s.description
  s.email = "james@zero-internet.org.uk"
  s.homepage = "https://github.com/jspc/prime_time"
  s.executables = ["primetime"]
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "README.md" ,
    "bin/primetime" ,
    "lib/calc.rb" ,
   ]
end
