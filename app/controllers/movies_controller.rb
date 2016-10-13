class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
  private

  def movie_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
  end

def create
  @movie = Movie.create!(params[:movie])
  redirect_to movies_path
end
end
