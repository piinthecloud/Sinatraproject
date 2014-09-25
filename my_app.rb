require 'sinatra'
require './lib/posts'


class MyApp < Sinatra::Base
  # This is where your code will go
  #get takes a string argument (a path in the url) and a block of code. could be /about_me

  before do

    #you can put assignments here to apply to all routes
  end


  get "/" do
    @post = Post.splitarray
#    erb method looks for an html file and it reads it
    erb :index
  end

  get "/about-me" do
    erb :about_me
  end

  get "/posts" do
    erb :posts
  end

  get "/posts/:postname" do
    erb "posts/#{params[:postname]}".to_sym
  end

end

# get "/users/:username" do
#   erb params[:username]
# end
