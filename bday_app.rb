require_relative 'lib/counter'
require 'sinatra'
require 'sinatra/reloader'

enable :sessions

get '/' do
  erb :index_2
end

post '/welcome' do
  session[:name] = params[:name]
  session[:birthdate] = params[:birthdate]
  redirect '/hbd'
end

get '/hbd' do
  @name = session[:name]
  @birthdate = session[:birthdate]
  @days = CountDays.new.days_until(@birthdate)
  # @today = days.is_today?(@birthdate)
  # @not_today = CountDays.new.another_day?(@birthdate)
  erb :birthday
end



