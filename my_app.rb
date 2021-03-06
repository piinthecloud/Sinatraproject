require 'sinatra'
require './lib/posts'


class MyApp < Sinatra::Base
  # This is where your code will go
  #get takes a string argument (a path in the url) and a block of code. could be /about_me

  before do

    #you can put assignments here to apply to all routes
  end


  get "/" do
#    erb method looks for an html file and it reads it
    erb :index
  end

  get "/about-me" do
    erb :about_me
  end

  get "/posts" do
    @post = Post.splitarray
    erb :posts
  end

  get "/posts/:postname" do
    erb "posts/#{params[:postname]}".to_sym
  end

  get "/contact" do
    erb :contact
  end

  get "/instagram" do
    erb :instagram
  end
  #
  # post "/" do
  #   puts params.inspect
  #   redirect to ("/")
  # end

end

# get "/users/:username" do
#   erb params[:username]
# end
