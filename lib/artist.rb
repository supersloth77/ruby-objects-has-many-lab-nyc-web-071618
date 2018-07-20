class Artist

attr_accessor :name, :songs

@@count = 0

def initialize(name)
  @name = name
  @songs = []
end

def add_song(song)
  @songs << song
  song.artist = self
  @@count += 1
end

def add_song_by_name(song_name)
  song = Song.new(song_name)
  song.artist = self
  @songs << song
  @@count += 1
end

def self.song_count
  @@count
end

end
