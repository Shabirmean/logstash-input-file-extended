Gem::Specification.new do |s|

  s.name = 'logstash-input-file-extended'
  s.version = '0.1.0'
  s.licenses = ['Apache License (2.0)']
  s.summary = "Stream events from files."
  s.description = "This gem is a Logstash plugin required to be installed on top of the Logstash core pipeline
using $LS_HOME/bin/logstash-plugin install gem name. This gem is not a stand-alone program"
  s.authors = ["Shabirmean"]
  s.email = 'shabir_tck09@hotmail.com'
  s.homepage = "https://www.linkedin.com/in/shabirmean/"
  s.require_paths = ["lib"]

  # Files
  s.files = Dir['lib/**/*', 'spec/**/*', 'vendor/**/*', '*.gemspec', '*.md', 'Gemfile', 'LICENSE', 'NOTICE.TXT']

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = {"logstash_plugin" => "true", "logstash_group" => "input"}

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", ">= 1.60", "<= 2.99"

  s.add_runtime_dependency 'logstash-codec-plain'
  s.add_runtime_dependency 'addressable'
  s.add_runtime_dependency 'filewatch', ['>= 0.8.1', '~> 0.8']
  s.add_runtime_dependency 'rest-client', ['~> 1.8']
  s.add_runtime_dependency 'logstash-codec-multiline', ['~> 3.0']

  s.add_development_dependency 'stud', ['~> 0.0.19']
  s.add_development_dependency 'logstash-devutils'
  s.add_development_dependency 'logstash-codec-json'
  s.add_development_dependency 'rspec-sequencing'
end
