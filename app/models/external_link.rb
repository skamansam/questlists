class ExternalLink < ActiveRecord::Base
  has_many :list_items
  has_many :list_links
  has_many :progresses
  has_many :users, :through=>:progresses
  acts_as_taggable
end
