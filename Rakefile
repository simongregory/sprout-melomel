lib = File.expand_path('lib', File.dirname(__FILE__))
$:.unshift lib unless $:.include?(lib)

require "bundler/gem_tasks"
Bundler.require

require 'rake/testtask'
require 'sproutmelomel'

# Hack this dir onto path for Ruby 1.9.2 support:
test_package = File.expand_path(File.join(File.dirname(__FILE__), 'test'))
$: << test_package unless $:.include? test_package

namespace :test do
  Rake::TestTask.new(:units) do |t|
    t.libs << "test/unit"
    t.test_files = FileList["test/unit/*_test.rb"]
    t.verbose = true
  end
end

task :test => 'test:units'

CLEAN.add '*.gem'

#############################################################################
#
# Packaging tasks
#
#############################################################################

task :release do
  puts ""
  print "Are you sure you want to relase Melomel Sprout #{Melomel::SPROUT_VERSION}? [y/N] "
  exit unless STDIN.gets.index(/y/i) == 0

  unless `git branch` =~ /^\* master$/
    puts "You must be on the master branch to release!"
    exit!
  end

  # Build gem and upload
  sh "gem build sproutmelomel.gemspec"
  sh "gem push sproutmelomel-#{Melomel::SPROUT_VERSION}.gem"
  sh "rm sproutmelomel-#{Melomel::SPROUT_VERSION}.gem"

  # Commit
  sh "git commit --allow-empty -a -m 'v#{Melomel::SPROUT_VERSION}'"
  sh "git tag v#{Melomel::SPROUT_VERSION}"
  sh "git push origin master"
  sh "git push origin v#{Melomel::SPROUT_VERSION}"
end
