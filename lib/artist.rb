
require "pry"

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def add_song(song)
    # binding.pry
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song)
    add_song(Song.new(song))
  end

  def self.song_count
    Song.all.length
  end




end
