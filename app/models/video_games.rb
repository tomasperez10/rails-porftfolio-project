class VideoGames < ApplicationRecord

  has_many :game_genres
  has_many :genres, through :game_genres
  belongs_to :user

  validates :title, presence: true
  validates :user_happiness_score, presence: true, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 10}

  scope :search, -> (query) { where("title LIKE ?", "%" + query + "%") }

end
