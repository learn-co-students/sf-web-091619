class Owner
	attr_accessor :name, :pets
	attr_reader :species
	@@all = []

	def initialize(name)
		@name = name
		@species = "human"
		@pets = {:cats=>[], :dogs=>[], :fishes=>[]}
		@@all << self
	end

	# Class Methods
	def self.all
		@@all
	end

	def self.reset_all
		all.clear
	end

	def self.count
		# self.all.count
		all.count
		# @@all.count
	end

	# Instance Methods
	def say_species
		"I am a human."
	end

	def buy_fish(fish_name)
		pets[:fishes] << Fish.new(fish_name)
	end
end
