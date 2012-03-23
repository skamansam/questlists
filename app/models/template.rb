class Template < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :game_category, :game_name

end
