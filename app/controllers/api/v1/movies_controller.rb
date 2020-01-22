class Api::V1::MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :update, :destroy]

    #show destroy update
    rescue_from ActiveRecord::RecordNotFound do |e|
      render json:{error: e.message}, status: :not_found
    end
    #create update
    rescue_from ActiveRecord::RecordInvalid do |e|
      render json:{error: e.message}, status: :unprocessable_entity
    end

    rescue_from Exception do |e|
      render json:{error: e.message}, status: :internal_error
    end

  def index
    pp "================================="
    pp Date.today.strftime("%Y/%m/%d")

    @movies = Movie.all
    if !params[:day].nil? && params[:day].present?
      @movies.MoviesService.search(@movies, params[:day])
    end
    render json: @movies, status: :ok
  end

  def show
    render json: @movie, status: :ok
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      render json: @movie, status: :created
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  def update
    if @movie.update(movie_params)
      render json: @movie, status: :ok
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @movie.destroy
      msg = {:message => "Movie #{@movie.name} deleted."}
      render json: msg, status: :ok
    end
  end

  private
    def set_movie
      @movie = Movie.find(params[:id])
    end

    def movie_params
      params.require(:movie).permit(:name, :description, :url, :presentation_day)
    end
end
