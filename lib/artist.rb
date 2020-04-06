class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
  end
  
  def add_song_by_name(song)
    song.artis = self
  end
  
  def songs
    Song.all.select {|song| song.artist ==  self}
  end
end 