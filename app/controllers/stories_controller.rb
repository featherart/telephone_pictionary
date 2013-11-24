class StoriesController < ApplicationController
  def index
  	@storylines = Storyline.all
  	@storyline = Storyline.new
  	@phrase = Phrase.new
  	@picture = Picture.new
    @turn = Turn.last.turn_number
    
    #@turn += 1
    
    puts "$$$$$$$$$$"
    puts @turn
    puts "(((((((((((("
      #binding.pry
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
  	#binding.pry this doesn't execute
    @turn = @turn + 1
    puts "$$$$$$$$$$$$"
    puts @turn
    puts "***********"
  	render layout: false

  	# respond_to do |format|
  	#   format.json
  	# end
  	#redirect_to @story
  end

  # def show
  # 	@story = Story.find(params[:id])

  # 	respond_to do |format|
  # 	  format.js
  # 	end
  # end
end
