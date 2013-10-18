module Stateful
  extend ActiveSupport::Concern
  included do
    belongs_to :user_state
    has_one  :user, through: :user_state
    delegate :state, to: :user_state
  end

end
