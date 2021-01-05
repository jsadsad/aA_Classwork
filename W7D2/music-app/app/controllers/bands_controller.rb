class BandsController < ApplicationController

  def new
    @band = Band.new
    render :new
  end

end
