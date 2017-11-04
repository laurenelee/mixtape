class ApplicationController < ActionController::API
  def index
    songs = Song.all
    render :json => songs.as_json(only: [:id, :title, :artist, :year]), status: :ok
  end

end
