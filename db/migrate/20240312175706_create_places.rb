# frozen_string_literal: true

# Migration responsible for create places table in the database
class CreatePlaces < ActiveRecord::Migration[7.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :country
      t.string :population
      t.string :lang

      t.timestamps
    end
  end
end
