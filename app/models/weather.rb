# frozen_string_literal: true

# Model responsible for infos of weather of specific place
class Weather < ApplicationRecord
  belongs_to :place
end
