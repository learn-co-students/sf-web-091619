class Cat < Animal
	include Walkable::InstanceMethods
	extend Findable::ClassMethods

	@@cats = []

	def self.all
		@@cats
	end
end

5.times { Cat.new(Faker::Creature::Cat.name) }
