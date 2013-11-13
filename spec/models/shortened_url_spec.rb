require 'spec_helper'

describe ShortenedUrl do
  it { should validate_presence_of :original }
  it { should have_many :visits }
  it { should belong_to :user }

  it "sets the short_url to the shortened url id" do
    shortened_url = ShortenedUrl.create(:original => "gomonkey.org")
    ShortenedUrl.find(shortened_url.id).short.to_i.should eq shortened_url.id
  end
end
