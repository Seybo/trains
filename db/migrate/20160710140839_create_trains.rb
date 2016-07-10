class CreateTrains < ActiveRecord::Migration
  def change
    create_table :trains do |t|
      t.string :type
      t.integer :speed
      t.integer :coaches_number

      t.timestamps null: false
    end
  end
end
