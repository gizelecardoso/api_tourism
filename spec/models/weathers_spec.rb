# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Weather do
  describe 'model associations' do
    it { should belong_to(:place) }
  end
end
