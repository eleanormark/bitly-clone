class ShortenedUrl < ActiveRecord::Base
  validates :original, :presence => true
  after_create :url_short
  has_many :visits
  belongs_to :user

  def url_short
    update(short: id)
  end
end
