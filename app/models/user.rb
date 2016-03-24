class User < ActiveRecord::Base
  has_secure_password

  has_many :submissions
  has_many :samples, through: :submissions
  has_many :songs, through: :submissions
  has_many :artists, through: :submissions
  has_many :albums, through: :submissions
  
end
