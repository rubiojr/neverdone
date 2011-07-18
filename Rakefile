require 'rubygems'
require 'bundler'
require 'lib/neverdone'

begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "neverdone"
  gem.version = Neverdone::VERSION
  gem.homepage = "http://github.com/rubiojr/neverdone"
  gem.license = "MIT"
  gem.summary = %Q{Evernote powered Todo for command line ninjas}
  gem.description = %Q{Evernote powered Todo for command line ninjas}
  gem.email = "rubiojr@frameos.org"
  gem.authors = ["Sergio Rubio"]
  # Include your dependencies below. Runtime dependencies are required when using your gem,
  # and development dependencies are only needed for development (ie running rake tasks, tests, etc)
  gem.add_runtime_dependency 'everton', '>= 0.1.3'
  gem.add_runtime_dependency 'clamp', '>= 0.2'
  gem.add_runtime_dependency 'term-ansicolor'
  gem.add_runtime_dependency 'highline'
  #  gem.add_development_dependency 'rspec', '> 1.2.3'
end
Jeweler::RubygemsDotOrgTasks.new

task :default => :build

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "neverdone #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
