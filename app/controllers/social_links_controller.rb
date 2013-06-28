class SocialLinksController < ApplicationController
  load_and_authorize_resource
  # GET /social_links
  # GET /social_links.json
  def index
    @social_links = SocialLink.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @social_links }
    end
  end

  # GET /social_links/1
  # GET /social_links/1.json
  def show
    @social_link = SocialLink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @social_link }
    end
  end

  # GET /social_links/new
  # GET /social_links/new.json
  def new
    @social_link = SocialLink.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @social_link }
    end
  end

  # GET /social_links/1/edit
  def edit
    @social_link = SocialLink.find(params[:id])
  end

  # POST /social_links
  # POST /social_links.json
  def create
    @social_link = SocialLink.new(params[:social_link])

    respond_to do |format|
      if @social_link.save
        format.html { redirect_to @social_link, :notice => 'Social link was successfully created.' }
        format.json { render :json => @social_link, :status => :created, :location => @social_link }
      else
        format.html { render :action => "new" }
        format.json { render :json => @social_link.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /social_links/1
  # PUT /social_links/1.json
  def update
    @social_link = SocialLink.find(params[:id])

    respond_to do |format|
      if @social_link.update_attributes(params[:social_link])
        format.html { redirect_to @social_link, :notice => 'Social link was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @social_link.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /social_links/1
  # DELETE /social_links/1.json
  def destroy
    @social_link = SocialLink.find(params[:id])
    @social_link.destroy

    respond_to do |format|
      format.html { redirect_to social_links_url }
      format.json { head :ok }
    end
  end
end
