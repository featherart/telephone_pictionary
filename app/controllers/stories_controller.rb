class StoriesController < ApplicationController
  def index
  	@stories = Story.all
  	@story = Story.new

  	respond_to do |format|
  	  format.html
  	end
  end

  def create
  	@story = Story.new(params[:story])
  	@story.save()

  	respond_to do |format|
  	  format.html
  	end
  end

  def show
  	@story = Story.find(params[:id])

  	respond_to do |format|
  	  format.js
  	end
  end
end
