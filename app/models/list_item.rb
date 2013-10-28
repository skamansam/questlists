class ListItem < ActiveRecord::Base
  include Stateful

  has_one :list

end
