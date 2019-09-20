class Song 
@@all = Array.new 

def initialize(name,artist,genre)
Song.all << self 
@name = name 
@artist = artist 
@genre = genre 
end 

def self.all
@@all 
end 
  
end 