require "sinatra"
#require "slim"
require "sinatra/flash"
require "pry"

get "/" do
  #{}"Hello World! The time is #{flash[:time]}"
  #{}"<form action='/time' method='POST'
  #input type='submit' value='What Time Is It?' title='What time is it?'>"
  #{}"<p>The time is #{flash[:time]}</p>"
  #@time = Time.now
  #{}"The time is #{@time}"
  binding.pry
  erb :index
end

get "/hi/:name" do
  "Hi there #{params[:name]}"
end

get "/hi/:name/:color" do
  "Hi there #{params[:name]}. Your favorite color is #{params[:color]}"
end

get "/something" do
  @number = 2+3
  "The number is: #{@number}"
end

get "/time" do
  
end
post "/time" do
	flash[:time] = Time.now.strftime("%I:%M:%S")
  binding.pry
	redirect '/'
end
