# frozen_string_literal: true

# Model responsible for places infos
class Place < ApplicationRecord
  has_many :interesting_points, dependent: :destroy
  has_many :weathers, dependent: :destroy
end
