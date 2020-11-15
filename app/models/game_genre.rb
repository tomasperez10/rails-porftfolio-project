class GameGenre < ApplicationRecord

  belongs_to :video_games
  belongs_to :genres
  
end
