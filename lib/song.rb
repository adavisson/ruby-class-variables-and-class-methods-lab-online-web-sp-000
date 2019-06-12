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
  
end