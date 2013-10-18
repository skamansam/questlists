class ApplicationController < ActionController::Base
  layout :get_layout
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # use CanCan for authorization on every action
  check_authorization

  #what to do when CanCan can't find authorization for the current action
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  private

  def get_layout
    return params[:layout]
  end
end
