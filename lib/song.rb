class Song
  attr_accessor :artist, :name
  @@all = []
  def initialize(name, artist = nil)
    @name = name
    @artist = artist
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    if @artist == nil 
      return nil
    else
      @artist.name
    end
  end
  

end 