# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Apis::FindTourismInfos, type: :interactor do
  describe '#call' do
    it 'returns points of tourism of some place' do
      response = described_class.call

      expect(response.tourism).to eq(
        [
          {
            name: 'Museu do Louvre',
            category: 'museu'
          },
          {
            name: 'Torre Eiffel',
            category: 'monumento'
          }
        ]
      )
    end
  end
end
