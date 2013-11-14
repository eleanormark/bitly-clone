class VisitsController < ApplicationController
  def show
    @url = ShortenedUrl.find_by(short: params[:slug])
    @url.visits.create
    redirect_to "http://#{@url.original}"
  end
end
