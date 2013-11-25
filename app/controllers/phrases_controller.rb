class PhrasesController < ApplicationController
  def index
  	@phrases = Phrase.all
  	@phrase = Phrase.new
    
  	respond_to do |format|
  	  format.html
  	end
  end

  def create
  	@phrase = Phrase.new(params[:phrase])
  	@phrase.save
    
    render layout: false
  	respond_to do |format|
  	  format.js
  	end
  end
end
