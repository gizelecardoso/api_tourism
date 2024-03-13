# frozen_string_literal: true

# Model responsible for infos of interesting points of specific place
class InterestingPoint < ApplicationRecord
  belongs_to :place
end
