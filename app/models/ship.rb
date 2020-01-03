class Ship
  
  attr_accessor :name, :type, :booty
  
  @@all = []
  
  def initialize(name, type, booty)
    @name = name
    @type = type
    @booty = booty
    @@all << self
  end
  
  def self.all
    return @@all
  end
  
  def self.clear
    @@all = []
  end
  
end
