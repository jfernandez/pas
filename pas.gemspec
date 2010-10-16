# -*- encoding: utf-8 -*-
require File.expand_path("../lib/pas/version", __FILE__)

Gem::Specification.new do |s|
  s.name = "pas"
  s.version = PAS::VERSION
  s.platform = Gem::Platform::RUBY
  s.author = "Jose Fernandez"
  s.email = "jfernandez@fourcubed.com"
  s.homepage = "http://github.com/jfernandez/pas"
  s.summary = "Poker Affiliate Solutions API Wrapper Gem"
  s.description = "This gem allows you to communicate with the PokerAffiliateSolutions.com REST API [Alpha]"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "pas"
  
  s.add_dependency("activeresource", "~> 2.3.5")
  s.add_dependency("activesupport", "~> 2.3.5")
  
  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency "rspec", "1.3.1"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end