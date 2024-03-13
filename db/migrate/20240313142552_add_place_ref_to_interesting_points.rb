# frozen_string_literal: true

# Migration responsible for create relation between place and interesting points
class AddPlaceRefToInterestingPoints < ActiveRecord::Migration[7.1]
  def change
    add_reference :interesting_points, :place, null: false, foreign_key: true
  end
end
