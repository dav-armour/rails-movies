class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.all.order(:id)
  end

  def show
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save

    redirect_to @movie
  end

  def new
    @movie = Movie.new
  end

  def edit
  end

  def update
    @movie.update(movie_params)

    redirect_to @movie
  end

  def destroy
    @movie.destroy

    redirect_to movies_path
  end

  private
  def set_movie
    @movie = Movie.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:notice] = "Wrong movie id"
    redirect_to movies_path
  end

  def movie_params
    params.require(:movie).permit(:title,:genre,:release_date,:runtime,:img)
  end
end
