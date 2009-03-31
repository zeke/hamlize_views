# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{hamlize_views}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Zeke Sikelianos"]
  s.date = %q{2009-03-30}
  s.default_executable = %q{hamlize_views}
  s.email = %q{zeke@sikelianos.com}
  s.executables = ["hamlize_views"]
  s.extra_rdoc_files = ["README.textile", "LICENSE"]
  s.files = ["README.textile", "bin/hamlize_views", "lib/hamlize_views.rb", "spec/hamlize_views_spec.rb", "spec/spec_helper.rb", "LICENSE"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/zeke/hamlize_views}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{This ruby gem uses the html2haml command line utility to convert ERB view files to HAML.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<haml>, [">= 0"])
    else
      s.add_dependency(%q<haml>, [">= 0"])
    end
  else
    s.add_dependency(%q<haml>, [">= 0"])
  end
end
