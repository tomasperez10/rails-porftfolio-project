class AddCreatedByToVideoGames < ActiveRecord::Migration[5.2]
  def change
    add_column :video_games, :created_by, :integer
  end
end
