class MoviesController < ApplicationController

  def index
    @movie = Movie.find_or_create_from_api(params[:search])
    @weather = Movie.getWeatherInfo(params[:location])
  end

  def show

  end



end
