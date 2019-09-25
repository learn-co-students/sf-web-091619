class Dog < Animal
	@@dogs = []

	def initialize(name)
		super(name)
		@@all << self
	end
	
	def self.all
		@@dogs
	end
end

5.times { Dog.new(Faker::Creature::Dog.name) }
