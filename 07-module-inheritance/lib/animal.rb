class Animal
	attr_reader :name
	attr_accessor :mood

	def initialize(name)
		@name = name
		@mood = "nervous"
		self.class.all << self
	end
end
