class UserState < ActiveRecord::Base
  belongs_to :state_for, :polymorphic=>true
  belongs_to :user
  belongs_to :state
end
