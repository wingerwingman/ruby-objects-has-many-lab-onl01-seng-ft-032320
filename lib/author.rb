class Author 
  attr_accessor :name
  @@post_count = 0
  @@all = []

  def initialize(name)
    @name = name
    @posts = []
    @@all << self
  end
  
  def self.all
    @@all
    end

  def posts
    @posts
  end

   def add_post(post)	
    post.author = self	
  end

  def add_post_by_title(title)	
    post = Post.new(title)	
    post.author = self	
  end

  def self.post_count
    @@post_count
  end

end 