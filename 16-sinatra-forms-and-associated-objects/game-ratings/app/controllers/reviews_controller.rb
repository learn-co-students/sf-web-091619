class ReviewsController < ApplicationController
	get "/reviews/new" do
		erb :"reviews/new"
	end

	post "/reviews" do
		my_game = Game.create(params[:game].except(:reviews))

		params[:game][:reviews].each do |review_details|
			review = Review.create(review_details)
			review.game = my_game

			review.save
		end

		game.save
		redirect "/games"
	end
end