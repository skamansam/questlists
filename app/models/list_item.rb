class ListItem < ActiveRecord::Base
  belongs_to :list
  belongs_to :template
  has_many :locations
  #has_many :maps, :through=>:locations
  acts_as_tree
  acts_as_taggable
  acts_as_taggable_on :game_category, :game_name
  accepts_attributes_for :locations
end
