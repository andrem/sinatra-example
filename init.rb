# Require the necessary libraries.
require 'rubygems'
require 'sinatra'

# add controllers and views
configure do
  root = File.expand_path(File.dirname(__FILE__))
  set :views, File.join(root, 'app', 'views')
end

configure(:production, :development) do
  # set expire session in seconds (4hs)
  use Rack::Session::Cookie, :expire_after => 14400
  enable :sessions
end

configure(:test) do
  set :sessions, false
end

# Set the not found page for URIs that don't match to any specified route.
not_found do
  status 404
  erb :not_found
end

# Load the controllers.
Dir["app/controllers/*.rb"].each { |file| load file }
