# frozen_string_literal: true

module Apis
  # Class responsible for call amadeus api and return some tourism places
  class FindTourismInfos
    include Interactor
    include HTTParty
    base_uri 'https://test.api.amadeus.com/v1/reference-data/locations/pois'

    def call
      context.geocoder = { latitude: 52.5186, longitude: 13.4081 }
      context.tourism = []

      response = self.class.get("?latitude=#{context.geocoder[:latitude]}&longitude=#{context.geocoder[:longitude]}",
                                headers: { 'Authorization' => "Bearer #{ENV.fetch('AMADEUS_TOKEN')}" })

      res_parsed = JSON.parse(response.body)
      return [] if res_parsed.blank? || res_parsed['data'].blank?

      res_parsed['data'].each do |res|
        context.tourism << { name: res['name'], category: res['category'] }
      end
    end
  end
end
