class Api::MoviesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @movies = Movie.where("english = ?", true)
    render "index.json.jb"
  end

  def show
    id = params[:id]
    @movie = Movie.find(id)
    render "show.json.jb"
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english],
    )
    @movie.save
    if @movie.save
      render "show.json.jb"
    else
      render json: { errors: @movie.errors.full_messages }, status: 406
    end
  end

  def update
    id = params[:id]
    @movie = Movie.find(id)

    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    @movie.english = params[:english] || @movie.english

    @movie.save
    if @movie.save
      render "show.json.jb"
    else
      render json: { errors: @movie.errors.full_messages }, status: 406
    end
  end

  def destroy
    id = params[:id]
    @movie = Movie.find(id)
    @movie.destroy
    render json: { message: "movie has been deleted." }
  end
end
