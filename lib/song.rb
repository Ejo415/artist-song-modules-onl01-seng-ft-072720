require 'pry'
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'
class Song
  include Paramable
  extend Memorable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
