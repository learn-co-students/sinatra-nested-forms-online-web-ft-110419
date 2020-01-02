class Ship
	attr_accessor :name, :type, :booty
	@@ships = []
	def initialize(params)
		params.each do |key, value|
			self.send("#{key}=", value)
		end
		@@ships << self
	end

	def self.all
		@@ships
	end

	def self.clear 
		@@ships = []
	end
end