class Song
  
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize (name, artist, genre)
    #initialize song info
    @name = name
    @artist = artist
    @genre = genre
    
    #increase song count
    @@count += 1
    
    #populate genres and artists arrays
    @@genres.push(genre)
    @@artists.push(artist)
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    array = []
    @@genres.each do |genre|
      if !array.include?(genre)
        array.push(genre)
      end
    end
    array
  end
  
  def self.artists
    array = []
    @@artists.each do |artist|
      if !array.include?(artist)
        array.push(artist)
      end
    end
    array
  end
  
  def self.genre_count
    genre_count_list = {}
    
    @@genres.each do |item|
      if !genre_count_list.key{item}
        genre_count_list[item] = 1
      else
        genre_count_list[item] += 1
      end
    end
    genre_count_list
  end
  
end