class ShortenedUrlsController < ApplicationController

  def index
    @urls = ShortenedUrl.all
  end
  
  def new
    @url = current_user.shortened_urls.new
  end

  def create
    @url = current_user.shortened_urls.create(url_params)
    #redirect_to shortened_url_path(@url)
    redirect_to user_path(current_user)
  end

  def show
    @url = ShortenedUrl.find(params[:id])
  end

private

  def url_params
    params.require(:shortened_url).permit(:original)
  end
end