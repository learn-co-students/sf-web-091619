class Fish < Animal
	@@fishes = []

	def initialize(name)
		super(name)
		@@all << self
	end
	
	def self.all
		@@fishes
	end
end

5.times { Fish.new(Faker::Creature::Horse.name) }
