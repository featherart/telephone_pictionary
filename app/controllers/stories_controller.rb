class StoriesController < ApplicationController
  def index
  	@storylines = Storyline.all
  	@storyline = Storyline.new
  	@phrase = Phrase.new
  	@picture = Picture.new

  	respond_to do |format|
  	  format.html
  	end
  end

  def create  	
  	# need to add all the pictures & phrases before 
  	# creating and saving the storyline
  	@picture = Picture.new(params[:picture])
  	@phrase = Phrase.new(params[:phrase])
  	# @storyline = Storyline.new(params[:storyline])
  	# @story.save()
  	render layout: false

  	# respond_to do |format|
  	#   format.json
  	# end
  	#redirect_to @story
  end

  def show
  	@story = Story.find(params[:id])

  	respond_to do |format|
  	  format.js
  	end
  end
end
