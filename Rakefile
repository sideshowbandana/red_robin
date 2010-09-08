require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require "rubygems"
gem "sideshowbandana-ohm"

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "sideshowbandana-red_robin"
    gemspec.summary = %{ An implementation of round robin using redis}
    gemspec.description = "iterate round robin over any list of items that you want."
    gemspec.email = "kyle.humberto@gmail.com"
    gemspec.homepage = "http://github.com/sideshowbandana/red_robin"
    gemspec.authors = ["Kyle Barton"]
    gemspec.add_dependency("sideshowbandana-ohm")
  end
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the red_robin plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for the red_robin plugin.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'RedRobin'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
