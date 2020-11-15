class VideoGames < ApplicationRecord

  has_many :game_genres
  has_many :genres, through :game_genres
  has_many :consoles
  belongs_to :user

end
