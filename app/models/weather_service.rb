# https://developer.weatherunlocked.com/documentation/localweather

BASE_URL_WEATHER = "http://api.weatherunlocked.com/api/current/"
API_PARTIAL_URL_WEATHER = "?app_id=#{Rails.application.credentials.dig(:WEATHER_APP_ID)}&app_key=#{Rails.application.credentials.dig(:WEATHER_APP_KEY)}"

class WeatherService < ApplicationRecord

  def self.getWeather(location)
    @weatherResults = HTTParty.get(BASE_URL_WEATHER + "#{location}" + API_PARTIAL_URL_WEATHER)
    @weatherResults
  end

end
