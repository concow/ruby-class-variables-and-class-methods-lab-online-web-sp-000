class Song
  attr_accessor :name, :artist, :genre

  @@count = 0                           #Class Variable counter initialization
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres<< genre
    @@artists << artist

  end

  def self.count        #class method
    return @@count
  end

  def self.genres
    @@genres = []

  end

  def self.artists                #ALL class methods have self. in it
    return @@artists.uniq
  end

  def self.artist_count

  end

  def self.genre_count

  end
end
