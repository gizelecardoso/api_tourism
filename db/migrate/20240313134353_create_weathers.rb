# frozen_string_literal: true

# Migration responsible for create weather table in the database
class CreateWeathers < ActiveRecord::Migration[7.1]
  def change
    create_table :weathers do |t|
      t.float :temp
      t.float :temp_min
      t.float :temp_max
      t.float :humidity
      t.string :description
      t.date :weather_date

      t.timestamps
    end
  end
end
