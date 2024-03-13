# frozen_string_literal: true

module Apis
  # Class responsible for call geocoder api and return coordinates infos
  class FindGeocoderInfos
    include Interactor

    def call
      context.geocoder = { latitude: 48.856614, longitude: 2.3522219 }
    end
  end
end
