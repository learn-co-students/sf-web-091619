class PartiesController < ApplicationController
  def new
  end

  def create
    Party.create(host_id: params[:host_id], guest_id: params[:guest_id])
    redirect_to current_user
  end
end
