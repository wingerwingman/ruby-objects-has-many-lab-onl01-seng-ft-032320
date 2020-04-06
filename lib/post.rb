class Post
  attr_accessor :title
  @post_count = 0
  @@all = []
  def initialize(title)
    @title = title
    save
  end
  
  def save
    @@all << @title
    @post_count += 1
  end
  
  def self.all
    @@all
  end
  
  def self.post_count
    @post_count
  end
end