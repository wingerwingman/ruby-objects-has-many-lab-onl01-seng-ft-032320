def Post
  attr_accessor :title

@@all = []
  def initialize(title)
    @title = title
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end