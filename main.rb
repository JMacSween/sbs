require 'sinatra'
require 'sinatra/reloader' if development?
get '/' do
  erb :home
end

get '/about' do
  erb :about
end
get '/contact' do
  erb :contact
end

set :public_folder, 'public'
set :views, 'views'

group 'development' do
  gem 'sinatra-contrib'
end
