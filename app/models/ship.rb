class Ship

  attr_reader :name, :type, :booty

  @@ships = []

  def initialize(attr)
    @name = attr [:name]
    @type = attr [:type]
    @booty = attr [:booty]
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships = []
  end
end
