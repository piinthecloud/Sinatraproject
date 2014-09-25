class Post
  attr_accessor :title, :url

#access posts, files withing views/posts
#Attributes: title, content, path, filename

#read my list of post files
#create an array of post objects with the
#attributes set.
#Post.all => [post, post]
  def initialize(array)
    @title = array[-1].split(".")[0]
    @url = "/posts/#{@title}"


  end


  def self.all
    #an each method would not return an array of arrays, while the collect method actually returns the array
    Dir.glob("views/posts/*")

  end

  def self.splitarray
    all.collect do |filepath|
      a = filepath.split("/")
      self.new(a)
    end
  end



end
