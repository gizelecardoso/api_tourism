# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Places::Create, type: :interactor do
  describe '#call' do
    context 'when params are valids' do
      it 'returns success' do
        expect(described_class.call).to be_a_success
      end

      it 'creates new places' do
        expect { described_class.call }.to change(Place, :count).by(1)
      end
    end
  end
end
