module VideoGamesHelper

  def genre_options(genres, video_game)
    if genres.count > 0
      render :partial => "genres/details", :locals => {:genres => genres, :video_games => video_games}
    else
      "No genres found"
    end
  end

end
