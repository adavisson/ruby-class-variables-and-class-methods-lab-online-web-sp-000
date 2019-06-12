class Song
  
  attr_accessor :name, :artist, :genre
  @@count = 0
  
  def initialize (name, artist, genre)
    #initialize song info
    @name = name
    @artist = artist
    @genre = genre
    
    #increase song count
    @@count += 1
  end
  
  
end