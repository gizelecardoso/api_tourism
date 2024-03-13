# frozen_string_literal: true

# Migration responsible for create relation between place and weather
class AddPlaceRefToWeathers < ActiveRecord::Migration[7.1]
  def change
    add_reference :weathers, :place, null: false, foreign_key: true
  end
end
