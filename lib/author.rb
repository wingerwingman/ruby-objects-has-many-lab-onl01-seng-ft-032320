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
    End

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(post_title)
    post = Post.new(post_title)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end

end 