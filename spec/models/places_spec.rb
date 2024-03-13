# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Place do
  describe 'model associations' do
    it { should have_many(:interesting_points).dependent(:destroy) }
    it { should have_many(:weathers).dependent(:destroy) }
  end
end
