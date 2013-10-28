module ApplicationHelper

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def create_auth_link(title,location, &options)
    if current_user.blank? || current_user.is_guest?
      link_to title,"#sign-up-dialog",:data=>{:toggle=>'modal',:target=>"#sign-up-dialog"}
    else
      link_to title, location, options
    end
  end


end
