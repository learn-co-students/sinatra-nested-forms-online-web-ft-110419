class Pirate
  attr_accessor :name, :weight, :height
  
  def initialize(attributes)
    @name = attributes[:name]
    @weight = attributes[:weight]
    @height = attributes[:height]
  end
  
end