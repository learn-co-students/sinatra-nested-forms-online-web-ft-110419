class Ship
  attr_accessor :name, :type, :booty 
  @@all = []
  
  def initialize(attributes)
    @name = attributes[:name]
    @type = attributes[:type]
    @booty = attributes[:booty]
    save
  end
  
  def save 
    @@all << self
  end 
  
  def self.clear
    @@all.clear
  end
  
  def self.all
    @@all
  end 
  
end