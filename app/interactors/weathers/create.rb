# frozen_string_literal: true

module Weathers
  # Class responsible for create weather data
  class Create
    include Interactor

    def call
      context.weathers.each do |weather|
        weather = Weather.new(weather)
        weather.place = context.place
        weather.save!
      end
    rescue ActiveRecord::RecordInvalid => e
      context.fail!(error: e.message)
    end
  end
end
