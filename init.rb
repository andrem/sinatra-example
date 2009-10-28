# Require the necessary libraries.
require 'rubygems'
require 'sinatra'

# add controllers and views
configure do
  root = File.expand_path(File.dirname(__FILE__))
  set :views, File.join(root, 'app', 'views')
end

# Set the not found page for URIs that don't match to any specified route.
not_found do
  status 404
  erb :not_found
end

# Load the controllers.
Dir["app/controllers/*.rb"].each { |file| load file }
