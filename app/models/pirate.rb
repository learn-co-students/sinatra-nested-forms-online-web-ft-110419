class Pirate

  attr_reader :name, :weight, :height

  @@pirates = []

  def initialize(attr)
    @name = attr[:name]
    @weight = attr[:weight]
    @height = attr[:height]
    @@pirates << self
  end

  def self.all
    @@pirates
  end
end
