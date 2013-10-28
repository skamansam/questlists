class List < ActiveRecord::Base
  include Stateful

  belongs_to :list_item

  def self.owned_by(user)
    where :created_by=>user.id
  end

  def self.top_level
    where :list_item=>nil
  end
end
