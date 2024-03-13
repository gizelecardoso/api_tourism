# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Apis::FindGeocoderInfos, type: :interactor do
  describe '#call' do
    it 'returns coordinates of some place' do
      name = 'Nova York, NY'
      lat = 40.7143528
      long = -74.0059731

      data = Geocoder::Lookup::Test.add_stub(
        'New York, NY', [
          OpenStruct.new(
            {
              'coordinates' => [lat, long],
              'address' => 'New York, NY, USA',
              'state' => 'New York',
              'state_code' => 'NY',
              'country' => 'United States',
              'country_code' => 'US'
            }
          )
        ]
      )

      allow(Geocoder).to receive(:search).with(name).and_return(data)

      response = described_class.call

      expect(response.geocoder).to eq({ latitude: lat, longitude: long })
    end
  end
end
