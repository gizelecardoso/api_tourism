# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Places::Find, type: :interactor do
  describe '#call' do
    context 'when find place based on params' do
      before(:each) do
        @place = create(:place, name: 'Brasil')
      end

      it 'returns success' do
        expect(described_class.call(name: 'Brasil')).to be_a_success
      end

      it 'returns place finded' do
        result = described_class.call(name: 'Brasil')

        expect(result.place).to eq(@place)
      end
    end

    context 'when doesnt find place based on params' do
      it 'returns success' do
        expect(described_class.call(name: 'Brasil')).to be_a_failure
      end
    end
  end
end
