# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SaveInfosIntoDatabase, type: :organizer do
  describe '#call' do
    it 'returns sequency of interactors' do
      expect(described_class.organized).to eq(
        [
          Places::Create,
          InterestingPoints::Create,
          Weathers::Create
        ]
      )
    end
  end
end
