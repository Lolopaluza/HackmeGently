class HackmegentlyController < ApplicationController

  def index
    @hackmegently_props = { user: current_user }
  end
end
