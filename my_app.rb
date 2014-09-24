require 'sinatra'

class MyApp < Sinatra::Base
  # This is where your code will go
  #get takes a string argument (a path in the url) and a block of code. could be /about_me
  get "/" do
#    erb method looks for an html file and it reads it
    erb :index
  end

  get "/about-me" do

    erb :about_me

  end

end
