begin
  require File.expand_path('../../.bundle/bundler/setup', __FILE__)

  # ActiveRecord requires Gem::LoadError to load
  module Gem
    class LoadError < LoadError; end
    # irb/locale.rb calls this if defined?(Gem)
    def self.try_activate(*); end
  end

  # ActiveSupport requires Kernel.gem to load
  # ActiveRecord requires main.gem to load
  module Kernel; def gem(*); end; end
rescue LoadError
  STDERR.puts 'Run `bin/setup` for faster app booting'
  require 'rubygems'
  require 'bundler/setup'
end
