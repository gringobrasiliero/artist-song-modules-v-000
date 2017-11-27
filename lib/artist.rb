require 'pry'


class Artist
  attr_accessor :name
  attr_reader :songs

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  include Paramable

  @@artists = []

  def initialize
    super
    @songs = []
  end

  def self.all
    @@artists
  end

end
