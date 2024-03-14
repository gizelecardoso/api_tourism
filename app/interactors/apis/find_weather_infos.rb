# frozen_string_literal: true

module Apis
  # Class responsible for call weather api and return climate infos
  class FindWeatherInfos
    include Interactor
    include HTTParty
    base_uri 'https://api.openweathermap.org/data/2.5/forecast'

    def call
      context.weathers = []
      # context.geocoder = { latitude: 52.5186, longitude: 13.4081 }

      response = self.class.get(
        "?lat=#{context.geocoder[:latitude]}&lon=#{context.geocoder[:longitude]}&appid=#{ENV.fetch('WEATHER_TOKEN')}"
      )

      return [] if response.blank?

      prepare_place_info(response)
      prepare_weather_info(response)
    end

    private

    def prepare_place_info(response)
      context.place = {
        name: response['city']['name'],
        country: response['city']['country'],
        population: response['city']['population']
      }
    end

    def prepare_weather_info(response)
      response['list'].each do |res|
        context.weathers << {
          temp: res['main']['temp'],
          temp_min: res['main']['temp_min'],
          temp_max: res['main']['temp_max'],
          humidity: res['main']['humidity'],
          description: res['weather'].first['description'],
          weather_date: res['dt_txt']
        }
      end
    end
  end
end
