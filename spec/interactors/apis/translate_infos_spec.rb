# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Apis::TranslateInfos, type: :interactor do
  describe '#call' do
    it 'returns translate infos' do
      response = described_class.call

      expect(response.translate).to eq({})
    end
  end
end
