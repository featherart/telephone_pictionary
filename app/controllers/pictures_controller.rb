class PicturesController < ApplicationController
  def index
  	@picture = Picture.all
  end

  def create
  end
end
