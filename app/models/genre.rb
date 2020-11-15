class Genre < ApplicationRecord

  has_many :game_genres
  has_many :video_games, through: :game_genres

end
