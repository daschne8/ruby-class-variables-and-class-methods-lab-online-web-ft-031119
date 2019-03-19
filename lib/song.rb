class Song
  attr_accessor
  attr_reader :name,:artist,:genre,:count
  @@artists = []
  @@genres = []
  @@count = 0
  def self.new(name,artist,genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def self.genre_count
      @@genres.length
  end

end
