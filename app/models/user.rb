class User < ApplicationRecord

  has_many :genres
  has_many :video_games, through: :genres

  validates :username, :presence => true,
                       :uniqueness => true
  validates :password, :presence => true

  has_secure_password


end
