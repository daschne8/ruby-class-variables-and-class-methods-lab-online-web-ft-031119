class Song
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
  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq
  end
  def self.genres
    @@genres.uniq
  end
def self.genre_count
  gen_hash = {}
  @@genres.each do |genre|
    gen_hash[genre] ||= 0
    gen_hash[genre] += 1
  end
  gen_hash
end

end
