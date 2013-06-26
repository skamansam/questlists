class TagIconsController < ApplicationController
  # GET /tag_icons
  # GET /tag_icons.json
  def index
    @tag_icons = TagIcon.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tag_icons }
    end
  end

  # GET /tag_icons/1
  # GET /tag_icons/1.json
  def show
    @tag_icon = TagIcon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tag_icon }
    end
  end

  # GET /tag_icons/new
  # GET /tag_icons/new.json
  def new
    @tag_icon = TagIcon.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tag_icon }
    end
  end

  # GET /tag_icons/1/edit
  def edit
    @tag_icon = TagIcon.find(params[:id])
  end

  # POST /tag_icons
  # POST /tag_icons.json
  def create
    @tag_icon = TagIcon.new(params[:tag_icon])

    respond_to do |format|
      if @tag_icon.save
        format.html { redirect_to @tag_icon, notice: 'Tag icon was successfully created.' }
        format.json { render json: @tag_icon, status: :created, location: @tag_icon }
      else
        format.html { render action: "new" }
        format.json { render json: @tag_icon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tag_icons/1
  # PUT /tag_icons/1.json
  def update
    @tag_icon = TagIcon.find(params[:id])

    respond_to do |format|
      if @tag_icon.update_attributes(params[:tag_icon])
        format.html { redirect_to @tag_icon, notice: 'Tag icon was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @tag_icon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_icons/1
  # DELETE /tag_icons/1.json
  def destroy
    @tag_icon = TagIcon.find(params[:id])
    @tag_icon.destroy

    respond_to do |format|
      format.html { redirect_to tag_icons_url }
      format.json { head :ok }
    end
  end
end
