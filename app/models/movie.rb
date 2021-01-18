class Movie < ApplicationRecord
  def self.find_or_create_from_api(search)
        @movie = OmdbService.search(search)
        # @movie = Movie.find_or_create_by(title: movie["Title"],
        # runtime: movie["Runtime"],
        # genre: movie["Genre"],
        # release_date: movie["Released"],
        # poster: movie["Poster"],
        # actors: movie["Actors"],
        # plot: movie["Plot"],
        # imdbRating: movie["imdbRating"],
        # director: movie["Director"])
  end

  def self.getWeatherInfo(location)
    @weather = WeatherService.getWeather(location)
  end
end
