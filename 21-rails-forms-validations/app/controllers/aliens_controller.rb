class AliensController < ApplicationController
  before_action :find_alien, only: [:show, :edit]

  def index
    @aliens = Alien.all
  end

  def search
    if params[:dangerous] == "1"

    @aliens = Alien.all.select do |alien|
      alien.dangerous == params[:dangerous]
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
    @alien = Alien.new
  end

  def create
  end

  def destroy
  end

  private

  def find_alien
    @alien = Alien.find(params[:id])
  end
end
