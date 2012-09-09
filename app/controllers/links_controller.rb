class LinksController < ApplicationController
  def show
    @link = Link.where(:id => params[:id]).first
  end
  
  def new
    @link = Link.new
  end
  
  def create
    @link = Link.new(params[:link])
    @link.save
    respond_to do |format|
      
      format.html { redirect_to '/', :notice => 'Link was successfully created.' }
      format.json { render json: @link, status: :created, location: @user }
    end
  end
end