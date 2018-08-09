class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    @@all << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    songs << song
    @@all << name
  end

  def self.song_count
    @@all.length
  end



end
