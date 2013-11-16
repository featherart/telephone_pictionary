class StoriesController < ApplicationController
  def index
  	@story = Story.all
  end

  def create
  end
end
