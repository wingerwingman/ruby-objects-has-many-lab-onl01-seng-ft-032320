def Post
  attr_accessor :title

@@all = []
  def initialize(title)
    @title = title
    save
  end
  
  def save
    @@all << title
  end
  
  def self.all
    @@all
  end
  
end