class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:movie_id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to movie_path(@movie)
  end

  def edit
    @movie = Movie.find(params[:movie_id])
  end

  def update
    @movie = Movie.find(params[:movie_id])
    @movie.update(movie_params)
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    @movie.destroy
    redirect_to movie_path(@movie)
  end
end
