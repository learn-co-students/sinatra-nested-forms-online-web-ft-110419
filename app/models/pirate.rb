class Pirate
	attr_accessor :name, :weight, :height
	@@pirates = []
	def initialize(params)
		params.each do |key, value|
			if key != "ships"
				self.send("#{key}=", value)
			end
		end
		@@pirates << self
	end
	
	def self.all
		@@pirates 
	end 

	def self.clear 
		@@pirates = []
	end
end