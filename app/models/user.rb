class User < ApplicationRecord

  has_many :genres
  has_many :video_games, through: :genres

  validates :email, :presence => true,
                    :uniqueness => true
  validates :username, :presence => true,
                       :uniqueness => true
  validates :password, :presence => true

  has_secure_password


end
