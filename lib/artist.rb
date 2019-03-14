class Artist
  attr_accessor :name

  @@artists = []

  def initialize(name)
    @name = name
    @@artists << self
  end

  def songs
    Song.all.select do |song|
      self == song.artist
    end
  end

  def add_song(song)
    # songs.push(songArg)
    song.artist = self
  end

  def add_song_by_name(songName)
    new_song = Song.new(songName)
    new_song.artist = self
  end

  def self.song_count
    Song.all.length
  end

end
