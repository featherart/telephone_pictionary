class StoriesController < ApplicationController
  def index
  	@stories = Story.all
  	@story = Story.new
  	@phrase = Phrase.new

  	respond_to do |format|
  	  format.html
  	end
  end

  def create
  	@story = Story.new(params[:story])
  	# @picture = Picture.new(params[:picture])
  	# @phrase = Phrase.new(params[:phrase])
  	@story.save()

  	respond_to do |format|
  	  format.html

  	end
  	redirect_to @story
  end

  def show
  	@story = Story.find(params[:id])

  	respond_to do |format|
  	  format.js
  	end
  end
end
