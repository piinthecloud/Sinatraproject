class Post

#access posts, files withing views/posts
#Attributes: title, content, path, filename

#read my list of post files
#create an array of post objects with the
#attributes set.
#Post.all => [post, post]
  def initialize(array)

  end


  def self.all
    Dir.glob("views/posts/*").collect do |filepath|
      a = filepath.split("/")
      self.new(a)
    end

  end

  def splitarray

  end



end
