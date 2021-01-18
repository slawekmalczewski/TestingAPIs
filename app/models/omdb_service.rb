BASE_URL = "http://www.omdbapi.com/?t="
API_PARTIAL_URL = "&apikey=#{Rails.application.credentials.dig(:PROJECT_API_KEY)}"


class OmdbService < ApplicationRecord
  attr_reader :results

  def self.search(search)
    @results = HTTParty.get(BASE_URL + "#{search}" + API_PARTIAL_URL)
    @results
  end



end
