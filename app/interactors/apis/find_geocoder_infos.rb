# frozen_string_literal: true

module Apis
  # Class responsible for call geocoder api and return coordinates infos
  class FindGeocoderInfos
    include Interactor

    def call
      results = Geocoder.search(context.place_param)
      coordinates = results.first.coordinates

      context.geocoder = { latitude: coordinates.first, longitude: coordinates.last }
    end
  end
end
