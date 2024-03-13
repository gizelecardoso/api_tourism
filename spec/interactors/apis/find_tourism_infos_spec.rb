# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Apis::FindTourismInfos, type: :interactor do
  describe '#call' do
    context 'when has some information' do
      it 'returns points of tourism of some place' do
        lista = [
          { category: 'SIGHTS', name: 'Berliner Dom' },
          { category: 'SIGHTS', name: 'Pergamon Museum' },
          { category: 'SIGHTS', name: 'DDR Museum' },
          { category: 'RESTAURANT', name: 'Alexanderplatz' }
        ]

        allow(Apis::FindTourismInfos).to receive(:call).and_return(lista)
        response = described_class.call

        expect(response).to eq(lista)
      end
    end
    context 'when hasnt any information' do
      it 'returns points of tourism of some place' do
        allow(Apis::FindTourismInfos).to receive(:call).and_return([])
        response = described_class.call

        expect(response).to eq([])
      end
    end
  end
end
