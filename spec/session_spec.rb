require File.dirname(__FILE__) + '/spec_helper'

describe 'A simple rspec test with sessions' do
	include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "should a session text" do
    get '/session'
    last_response.body.should match /session example/
	end
	
	it "should a session fake text" do
	  get '/session', {}, 'rack.session' => { :example => "session fake example" }
	  last_response.body.should match /session fake example/
	end

end