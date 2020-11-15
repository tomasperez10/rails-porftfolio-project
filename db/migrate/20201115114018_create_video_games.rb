class CreateVideoGames < ActiveRecord::Migration[5.2]
  def change
    create_table :video_games do |t|
      t.string :title
      t.text :description
      t.string :genre
      t.integer :user_happiness_score

      t.timestamps
    end
  end
end
