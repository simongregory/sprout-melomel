# -*- encoding: utf-8 -*-
lib = File.expand_path File.join(File.dirname(__FILE__), 'lib')
$:.unshift lib unless $:.include?(lib)

require 'bundler'
require 'rake'
require 'sproutmelomel'

Gem::Specification.new do |s|
  s.name                      = 'sproutmelomel'
  s.version                   = Melomel::SPROUT_VERSION
  s.authors                   = ['Simon Gregory']
  s.email                     = 'projectsprouts@googlegroups.com'
  s.homepage                  = 'http://melomel.info'
  s.summary                   = 'Melomel is an API for accessing ActionScript objects from external languages.'
  s.description               = 'Project Sprouts support for Melomel.'
  s.executables               = ['melomel-air', 'melomel-flex']
  s.post_install_message      = File.read 'POSTINSTALL.rdoc'
  s.required_rubygems_version = ">= 1.3.7"
  s.require_path              = ['lib']
  s.files                     = FileList['**/**/*'].exclude /.git|.svn|.DS_Store|.gem|.tmproj|tmp/
  s.add_bundler_dependencies
end

