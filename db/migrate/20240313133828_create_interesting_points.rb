# frozen_string_literal: true

# Migration responsible for create interesting_points table in the database
class CreateInterestingPoints < ActiveRecord::Migration[7.1]
  def change
    create_table :interesting_points do |t|
      t.string :name
      t.string :category
      t.integer :rank

      t.timestamps
    end
  end
end
