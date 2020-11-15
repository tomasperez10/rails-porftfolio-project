class VideoGames < ApplicationRecord

  has_many :game_genres
  has_many :genres, through :game_genres
  belongs_to :user
  belongs_to :console

  validates :title, presence: true, uniqueness: {scope: :console_id}
  validates :user_happiness_score, presence: true, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 10}

end
