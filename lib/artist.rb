class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
  end
  
  def add_song(song)
    song.artis = self
  end
  
  def song
    Song.all.select {|song| song.artist ==  self}
  end
end 