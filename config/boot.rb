begin
  require File.expand_path('../../.bundle/bundler/setup', __FILE__)
rescue LoadError
  STDERR.puts 'Run `bin/setup` for faster app booting'
  require 'rubygems'
  require 'bundler/setup'
end
