class ListItem < ActiveRecord::Base
  belongs_to :list
  has_one :template
  acts_as_tree
  acts_as_taggable
  acts_as_taggable_on :game_category, :game_name
end
