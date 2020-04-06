class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(songs)
    @songs << songs
    songs.artist = self
  end
  
  def songs
    @songs
  end
end 