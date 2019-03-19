class Song
  attr_accessor
  attr_reader :name,:artist,:genre
  @@artists = []
  @@genres = []
  def new(name,artist,genre)
    @name = name
    @artist = artist
    @@artists.include?(artist) ? : @@artist << artist
    @genre = genre
    @@genre.include?(genre) ? :@@genre << genre
  end

  def self.genre_count
      @@genres.length
  end

end
