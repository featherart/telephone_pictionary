class Storyline < ActiveRecord::Base
  attr_accessible :phrase_id, :picture_id, :turn, :user_id
end
