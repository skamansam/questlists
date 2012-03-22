class ListItem < ActiveRecord::Base
  belongs_to :list
  has_one :template
end
