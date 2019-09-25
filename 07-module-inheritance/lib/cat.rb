class Cat < Animal
	@@cats = []

	def initialize(name)
		super(name)
		@@all << self
	end

	def self.all
		@@cats
	end
end

5.times { Cat.new(Faker::Creature::Cat.name) }
