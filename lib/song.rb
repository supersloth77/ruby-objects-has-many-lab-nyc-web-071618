require 'pry'

class Song

attr_accessor :name, :artist

@@all = []

def initialize(name)
  @name = name
  @@all << self
  # binding.pry
end

def artist_name
  if self.artist.class == Artist
    return self.artist.name
  else
    nil
  end
end

end
