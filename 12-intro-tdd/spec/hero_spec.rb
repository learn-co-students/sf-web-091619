require_relative '../config/environment.rb'

describe "Hero Class" do 
	let(:thor) do
		Hero.new([ 
    {
        name: 'Super Strength',
        coolness: 3
    },
    {
        name:'Flight',
        coolness: 5
    },
    {
        name: 'Lightning Blast',
        coolness: 10
    }
	])
	end

	it "Should return it's coolest ability" do
		expect(thor.coolest_ability).to(eq({
        name: 'Lightning Blast',
        coolness: 10
    }))
	end

	it "Should be able to add abilities to abilites" do
		thor.add_ability({
			name: "Hammer Boomerang",
			coolness: 10
		})

		expect(thor.abilities).to(include({
			name: "Hammer Boomerang",
			coolness: 10
		}))
	end

	# Sad path
	it "Should not add malformed input to our abilites" do
		thor.add_ability(2)
		expect(thor.abilities).not_to include(2)
	end

	it "testing let" do
		binding.pry
	end
end