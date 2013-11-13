class VisitsController < ApplicationController
  def show
    @url = ShortenedUrl.find_by(short: params[:slug])
    # Visit.create(:shortened_url_id => @url.id)
    @url.visits.create
    redirect_to "http://#{@url.original}"
  end
end
