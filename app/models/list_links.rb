class ListLinks < ActiveRecord::Base
  belongs_to :list
  belongs_to :external_link
  acts_as_taggable
end