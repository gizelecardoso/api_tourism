# frozen_string_literal: true

require 'rails_helper'

RSpec.describe InterestingPoints::Create, type: :interactor do
  describe '#call' do
    before(:each) do
      create(:place)
    end

    it 'returns success' do
      expect(described_class.call).to be_a_success
    end

    it 'creates new interesting points' do
      expect { described_class.call }.to change(InterestingPoint, :count).by(1)
    end
  end
end
