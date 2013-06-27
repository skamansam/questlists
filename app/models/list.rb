class List < ActiveRecord::Base
  belongs_to :template
  has_many :list_items
  has_many :list_links
  has_many :external_links, :through=>:list_links
  accepts_nested_attributes_for :list_items
  acts_as_tree
  acts_as_taggable
  acts_as_taggable_on :game_category, :game_name
end
