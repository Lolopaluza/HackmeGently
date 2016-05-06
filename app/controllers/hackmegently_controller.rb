class HackmegentlyController < ApplicationController
  before_action :authenticate_user!

  def index
    @hackmegently_props = { name: "Stranger" }
  end
end
