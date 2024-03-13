# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TourismController, type: :request do
  describe 'GET #show' do
    context 'when place param exists' do
      it 'returns http success' do
        place = Place.create(name: 'França')

        get tourism_path(place: 'França')

        expect(response.body).to eq(place.to_json)
        expect(response).to have_http_status(200)
      end
    end

    context 'when place param doesnt exists' do
      it 'returns emtpy json' do
        get tourism_path(place: 'Outro')

        expect(response.body).to eq('{}')
        expect(response).to have_http_status(200)
      end
    end
  end
end
