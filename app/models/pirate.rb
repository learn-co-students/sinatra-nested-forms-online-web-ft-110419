class Pirate

      @@all = []
      attr_accessor :name ,:weight,:height
       def initialize(attribute)
        @name = attribute[:pirate][:name]
        @weight = attribute[:pirate][:weight]
        @height = attribute[:pirate][:height]
        @@all << self
        self
        end
        
     def self.all 
       @@all
     end
end