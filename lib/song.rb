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

  def self.artists
    return @@artists.uniq
  end
  
  def artist_count

  end

  def genre_count

  end
end
