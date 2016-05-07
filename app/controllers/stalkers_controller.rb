class StalkersController < ApplicationController

  def stalker
    @user = user
    @stalker = stalker
    @user.stalker << Stalker.find(params[:id])
  end
end
