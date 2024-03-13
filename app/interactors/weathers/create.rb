# frozen_string_literal: true

module Weathers
  # Class responsible for create weather data
  class Create
    include Interactor

    def call
      weather = Weather.new(place: Place.first)

      context.fail!(error: :invalid_record) unless weather.save
    end
  end
end
