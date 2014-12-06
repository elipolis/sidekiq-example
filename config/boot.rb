ENV["RACK_ENV"] ||= "development"
$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), ".."))
require 'bundler'
Bundler.require(:default, ENV["RACK_ENV"])

Dir["./config/initializers/**/*.rb"].each { |file| require file }
