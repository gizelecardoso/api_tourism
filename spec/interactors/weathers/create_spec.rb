# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Weathers::Create, type: :interactor do
  describe '#call' do
    before(:each) do
      create(:place)
    end

    it 'returns success' do
      expect(described_class.call).to be_a_success
    end

    it 'creates new weathers' do
      expect { described_class.call }.to change(Weather, :count).by(1)
    end
  end
end
