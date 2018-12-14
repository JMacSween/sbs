require 'sinatra'
require 'sinatra/reloader' if development?
require 'sass'
require "./song.rb"
require 'slim'

get('/styles.css'){ scss :styles }

get '/' do
  erb :home
end

get '/about' do
  @title = "All about this Website "
  erb :about
end

get '/contact' do
  @title = "Call Me Anytime"
  erb :contact
end

not_found do
  erb :not_found
end

set :public_folder, 'public'
set :views, 'views'
