class PagesController < ApplicationController
  def index
    params[:per_page] ||= 10
    params[:page]     ||= 1
    @links = Link.paginate(:page => params[:page], :per_page => params[:per_page]).order('id DESC')
  end
end
