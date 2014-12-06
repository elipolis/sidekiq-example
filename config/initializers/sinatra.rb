require 'sinatra'

set :environment, ENV['RACK_ENV']
set :sessions, true
set :root, Proc.new { File.join(File.dirname(__FILE__), "..", "..", "app", "public") }
set :public_folder, Proc.new { File.join(root, "app", "public") }
set :views, Proc.new { File.join(root, "app", "views") }
set :run, false
set :dump_errors, false

Dir["app/controllers/**/*.rb"].each { |file| require file }
