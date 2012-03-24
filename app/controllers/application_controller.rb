class ApplicationController < ActionController::Base
  protect_from_forgery

  layout 'application'
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_url
  end

  def after_sign_in_path_for(resource_or_scope)
    if resource.class==Home
      return homes_path
    end
    return stored_location_for(resource)
  end
end
