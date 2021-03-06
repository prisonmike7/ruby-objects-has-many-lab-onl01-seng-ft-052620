class Artist

  attr_accessor :name, :songs

  # @@song_collection

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    # @@song_collection << song
    song.artist = self
  end

  def songs
    @songs
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.song_count
    Song.all.length
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

end
