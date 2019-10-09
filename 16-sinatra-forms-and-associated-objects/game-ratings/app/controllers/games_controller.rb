class GamesController < ApplicationController
	get '/games' do
		@games = Game.all
		erb :"/games/index"
	end

	get '/games/new' do
		@game = Game.new
		erb :"/games/new"
	end
	
	get '/games/:id' do
		@game = Game.find(params[:id])
		erb :"/games/show"
	end

	post "/games" do
		@game = Game.new(params)

		if params[:title] == ''
			erb :"/games/new"
		else
			@game.save
			redirect "/games/#{@game.id}"
		end
	end

	get "/games/:id/edit" do
		@game = Game.find(params[:id])
		erb :"/games/edit"
	end

	patch "/games/:id" do
		@game = Game.find(params[:id])

		if params[:game][:title] == ""
			erb :"/games/edit"
		else
			@game.update(params[:game])
			redirect "/games/#{@game.id}"
		end
	end

	delete "/games/:id" do
		# game = Game.find(params[:id])

		Game.delete(params[:id])
		redirect "/games"
	end
end