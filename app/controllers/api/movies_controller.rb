class Api::MoviesController < ApplicationController
  def all_movies_action
    @movies = Movie.all
    render "all_movies.json.jb"
  end

  def random_movie_action
    @random_movie = Movie.find_by(id: rand(1..Movie.count))
    render "random_movie.json.jb"
  end

  def select_movie_action
    movie_selection = params["movie_id"]
    @selected_movie = Movie.find_by(id: movie_selection)
    render "select_movie.json.jb"
  end
end
