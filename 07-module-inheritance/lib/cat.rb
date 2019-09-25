class Cat < Animal
	include Walkable::InstanceMethods
	extend Findable::ClassMethods

	@@all = []

	def self.all
		@@all
	end
end

5.times { Cat.new(Faker::Creature::Cat.name) }
