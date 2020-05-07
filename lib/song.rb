class Song
  attr_accessor :artist
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def artist=(artist)
    @artist = artist
    @artist.songs << self
  end
  def self.all
    @@all
  end
  def artist_name
    @artist.nil? ? nil : @artist.name
  end
end
