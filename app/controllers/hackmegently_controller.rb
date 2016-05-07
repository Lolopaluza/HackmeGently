class HackmegentlyController < ApplicationController
  before_action :authenticate_user!

  def index
    @hackmegently_props = { user: current_user }
  end
end
