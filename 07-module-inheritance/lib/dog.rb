class Dog < Animal
	include Walkable::InstanceMethods
	extend Findable::ClassMethods

	@@dogs = []

	def self.all
		@@dogs
	end
end

5.times { Dog.new(Faker::Creature::Dog.name) }
