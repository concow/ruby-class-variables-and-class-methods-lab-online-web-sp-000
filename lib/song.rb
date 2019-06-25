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

  def self.count                #ALL class methods have self. in it
    return @@count
  end

  def self.genres
    return @@genres.uniq        #uniq method returns unique genres only
  end

  def self.artists
    return @@artists.uniq
  end

  def self.artist_count

  end

  def self.genre_count
    genre_count = {}          #init genre_count hash
    @@genres.each do |genre|
      if genre_count[genre]     #if its a new genre, add it
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
end
