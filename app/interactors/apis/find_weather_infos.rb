# frozen_string_literal: true

module Apis
  # Class responsible for call weather api and return climate infos
  class FindWeatherInfos
    include Interactor

    # rubocop:disable Metrics/MethodLength
    def call
      context.place = {
        name: 'Museu do Louvre',
        country: 'museu',
        population: 1000
      }

      context.weather = [
        {
          temp: 20.5,
          temp_min: 15,
          temp_max: 25,
          humidity: 60,
          description: 'tempestade',
          weather_date: Date.today
        },
        {
          temp: 20.5,
          temp_min: 15,
          temp_max: 25,
          humidity: 60,
          description: 'tempestade',
          weather_date: Date.today + 1
        }
      ]
    end
    # rubocop:enable Metrics/MethodLength
  end
end
