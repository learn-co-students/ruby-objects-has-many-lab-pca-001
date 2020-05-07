require 'pry'
class Artist
  attr_reader :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  def add_song(song)
    song.artist = self
    @songs << song
  end
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    song.artist = self
  end
  def self.song_count
    Song.all.count
  end
  def self.all
    @@all
  end
end
