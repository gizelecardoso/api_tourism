# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Apis::FindWeatherInfos, type: :interactor do
  describe '#call' do
    it 'returns infos about the place' do
      response = described_class.call

      expect(response.place).to eq(
        {
          name: 'Museu do Louvre',
          country: 'museu',
          population: 1000
        }
      )
    end

    it 'returns infos about the weather' do
      response = described_class.call

      expect(response.weather).to eq(
        [
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
      )
    end
  end
end
