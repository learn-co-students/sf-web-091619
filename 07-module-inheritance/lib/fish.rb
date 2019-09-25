class Fish < Animal
	extend Findable::ClassMethods
	@@fishes = []
	
	def self.all
		@@fishes
	end
end

5.times { Fish.new(Faker::Creature::Horse.name) }
