class VideoGames < ApplicationRecord

  has_many :game_genres
  has_many :genres, through :game_genres
  belongs_to :user

  validates :title, presence: true
  validates :user_happiness_score, presence: true, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 10}

  scope :search, -> (query) { where("title LIKE ?", "%" + query + "%") }

  def genres_attributes=(genre_attributes)
    genre_name = genre_attributes["0"]["name"]
    unless genre_name.blank?
      genre = Genre.find_or_create_by(name: genre_name)
      self.genres << genre
    end
  end

  private
  def destroy_video_games
    self.video_games.each do |video_game|
      video_game.destroy
    end
  end

end
