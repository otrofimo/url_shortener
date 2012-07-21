class UrlsController < ApplicationController

  def create
  	@url = Url.create(params[:url])
  	redirect_to(root_path)
  end

  def index
  	@urls = Url.all
  	@url = Url.new
  end

  def show
  	@url = Url.find(params[:id])
  	redirect_to ("http://#{@url.long}")
  end
end
