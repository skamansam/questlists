class ApplicationController < ActionController::Base
  layout :get_layout
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # use CanCan for authorization on every action
  check_authorization :unless => :do_not_check_authorization?

  #what to do when CanCan can't find authorization for the current action
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  def after_sign_in_path_for(resource)
    lists_path(:show=>"mine")
  end

  private

  def get_layout
    return params[:layout]
  end

  def do_not_check_authorization?
    respond_to?(:devise_controller?)
  end
end
