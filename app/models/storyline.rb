class Storyline < ActiveRecord::Base
  attr_accessible :phrase_id, :picture_id, :turn, :user_id
  has_many :stories
  has_many :phrases
end
