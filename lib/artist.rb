class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
  end
  
  def songs(name,genre)
    song = Song.new(name, genre)
    add_song(song)
  end
end 