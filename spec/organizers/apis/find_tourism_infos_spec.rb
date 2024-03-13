# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Apis::FindTourismInfos, type: :organizer do
  describe '#call' do
    it 'returns sequency of interactors' do
      expect(described_class.organized).to eq(
        [
          Apis::FindGeocoderInfos,
          Apis::FindInterestingPointsInfos,
          Apis::FindWeatherInfos,
          Apis::TranslateInfos
        ]
      )
    end
  end
end
