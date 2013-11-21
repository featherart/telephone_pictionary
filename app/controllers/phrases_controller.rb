class PhrasesController < ApplicationController
  def index
  	@phrases = Phrase.all
  	@phrase = Phrase.new

  	respond_to do |f|
  	  f.html
  	end
  end

  def create
  	@phrase = Phrase.new(params[:phrase])
  	@phrase.save
  	respond_to do |f|
  	  f.js
  	end
  end
end
