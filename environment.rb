require "bundler"
Bundler.require 

# Whenever you specify a Gem in your Gemfile and run bundle install , bundler will go and
# install specified gem and load code for that Gem in you app by putting require
# 'whenever' this way bundler will load code for all of your Gems in your Rails app, and
# you can call any method from any Gem without any pain

require_relative "./lib/miching/version"
require_relative './lib/miching/cli'
require_relative './lib/miching/api'
require_relative './lib/miching/song'