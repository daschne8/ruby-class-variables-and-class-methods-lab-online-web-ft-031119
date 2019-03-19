require 'pry'
class Song
  attr_reader :name,:artist,:genre,:count
  @@artists = []
  @@genres = []
  @@count = 0
  def self.new(name,artist,genre)
    self.@name = name
    self.@artist = artist
    @@artists << artist
    self.@genre = genre
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
  def self.artist_count
    art_hash = {}
    @@artists.each do |artist|
      art_hash[artist] ||= 0
      art_hash[artist] += 1
    end
    art_hash
  end
end

song_list = []
song_list << Song.new("girl","Beck","Alt")
song_list << Song.new("Cigaro","SoaD","Metal")

binding.pry
