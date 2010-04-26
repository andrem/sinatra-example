get '/session' do
  session[:example] ||= "session example"
  erb :session
end