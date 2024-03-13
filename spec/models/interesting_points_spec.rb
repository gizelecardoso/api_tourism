# frozen_string_literal: true

require 'rails_helper'

RSpec.describe InterestingPoint do
  describe 'model associations' do
    it { should belong_to(:place) }
  end
end
