class FlatsController < ApplicationController
  def index
    @flats = Flat.new
  end
end
