class Progress < ActiveRecord::Base
  belongs_to :list
  belongs_to :user
  serialize :complete, :as=>Hash
end
