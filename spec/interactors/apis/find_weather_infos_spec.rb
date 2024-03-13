# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Apis::FindWeatherInfos, type: :interactor do
  describe '#call' do
    let(:data) do
      OpenStruct.new(
        {
          place: {
            name: 'Berlin',
            country: 'DE',
            population: 1_000_000
          },
          weathers: [
            {
              temp: 281.79,
              temp_min: 281.79,
              temp_max: 282.43,
              humidity: 82,
              description: 'clear sky',
              weather_date: '2024-03-14 00:00:00'
            }
          ]
        }
      )
    end

    it 'returns infos about the place' do
      allow(Apis::FindWeatherInfos).to receive(:call).and_return(data)

      response = described_class.call

      expect(response.place).to eq(
        {
          name: data.place[:name],
          country: data.place[:country],
          population: data.place[:population]
        }
      )
    end

    it 'returns infos about the weather' do
      allow(Apis::FindWeatherInfos).to receive(:call).and_return(data)

      response = described_class.call

      expect(response.weathers.first).to eq(
        {
          temp: data.weathers.first[:temp],
          temp_min: data.weathers.first[:temp_min],
          temp_max: data.weathers.first[:temp_max],
          humidity: data.weathers.first[:humidity],
          description: data.weathers.first[:description],
          weather_date: data.weathers.first[:weather_date]
        }
      )
    end
  end
end
