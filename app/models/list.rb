class List < ActiveRecord::Base
  belongs_to :template
  acts_as_taggable
  acts_as_taggable_on :game_category, :game_name
end
