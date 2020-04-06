require 'pry'
class Artist 
  attr_accessor :name
  @@song_count = 0
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @all
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
    # binding.pry
  end
  
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
    song.artist = self
    @@song_count += 1 
    # binding.pry
  end
  
  def songs 
    # @songs 
    song.all.select {|song| song.artist == self}

  end
  
  def self.song_count
    @@song_count
  end
  
end 