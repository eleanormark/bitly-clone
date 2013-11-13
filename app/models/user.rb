class User < ActiveRecord::Base
  has_many :shortened_urls
  validates :name, :email, :presence => true
  validates :password, confirmation: true

  has_secure_password
end
