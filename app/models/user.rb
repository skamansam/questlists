class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable,:omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  def guest?
    !self.confirmed?
  end

  def registered?
    self.confirmed?
  end
end
