class ModsController < ApplicationController
  before_filter :authenticate
  def index
    @mods = Mod.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mods }
    end
  end

  def show
    redirect_to mods_path
  end

  def new
    @mod = Mod.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mod }
    end
  end
  
  def edit
    @mod = Mod.find(params[:id])
  end

  def create
    @mod = Mod.new(params[:mod])

    respond_to do |format|
      if @mod.save
        format.html { redirect_to @mod, notice: 'Mod was successfully created.' }
        format.json { render json: @mod, status: :created, location: @mod }
      else
        format.html { render action: "new" }
        format.json { render json: @mod.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @mod = Mod.find(params[:id])

    respond_to do |format|
      if @mod.update_attributes(params[:mod])
        format.html { redirect_to @mod, notice: 'Mod was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mod.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @mod = Mod.find(params[:id])
    @mod.destroy

    respond_to do |format|
      format.html { redirect_to mods_url }
      format.json { head :no_content }
    end
  end
  
  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "admin" && password == "password"
    end
  end
end
