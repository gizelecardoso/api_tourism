# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Apis::FindGeocoderInfos, type: :interactor do
  describe '#call' do
    it 'returns coordinates of some place' do
      response = described_class.call

      expect(response.geocoder).to eq({ latitude: 48.856614, longitude: 2.3522219 })
    end
  end
end
