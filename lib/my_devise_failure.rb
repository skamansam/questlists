class MyDeviseFailure < Devise::FailureApp
  def redirect_url
    #return super unless [:worker, :employer, :user].include?(scope) #make it specific to a scope
     #new_user_session_url(:subdomain => 'secure')
     #lists_url
     Rails.logger.info request.referrer
     Rails.logger.info root_path
     redirect_to(request.referrer.blank? ? request.referrer : root_path) and return
  end

  # You need to override respond to eliminate recall
  def respond
    if http_auth?
      http_auth
    else
      redirect_url
    end
  end
end
