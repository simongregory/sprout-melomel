# -*- encoding: utf-8 -*-
lib = File.expand_path File.join(File.dirname(__FILE__), 'lib')
$:.unshift lib unless $:.include?(lib)

require 'sproutmelomel'

Gem::Specification.new do |s|
  s.name                      = 'sprout-melomel'
  s.version                   = Melomel::SPROUT_VERSION
  s.authors                   = ['Simon Gregory']
  s.email                     = 'projectsprouts@googlegroups.com'
  s.homepage                  = 'http://melomel.info'
  s.summary                   = 'Melomel is an API for accessing ActionScript objects from external languages.'
  s.description               = 'Project Sprouts support for Melomel.'
  s.executables               = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.post_install_message      = File.read 'POSTINSTALL.rdoc'
  s.required_rubygems_version = ">= 1.3.7"
  s.require_path              = ['lib']
  s.files                     = FileList['**/**/*'].exclude /.git|.svn|.DS_Store|.gem|.tmproj|tmp/

  s.add_development_dependency 'rake'
  s.add_development_dependency 'shoulda'
  s.add_development_dependency 'mocha'

  s.add_runtime_dependency 'sprout', '>= 1.1.11.pre'
  s.add_runtime_dependency 'flashsdk', '>= 1.0.29.pre'
  s.add_runtime_dependency 'melomel', '>= 0.6.2'
end

