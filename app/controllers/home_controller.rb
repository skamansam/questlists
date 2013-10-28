class HomeController < ApplicationController
  skip_authorization_check :welcome,:tour
  def welcome
  end
  def tour
  end
  def my_lists
  end
end
