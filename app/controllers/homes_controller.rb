class HomesController < ApplicationController
  before_filter :authenticate_user!
  skip_authorization_check
  # GET /homes
  # GET /homes.json
  def index
    @lists = current_user.lists

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @homes }
    end
  end

end
