class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.decimal :lat,         precision: 18, scale: 12
      t.decimal :long,        precision: 18, scale: 12
      t.string :stop_id,      index: true
      t.string :stop_code,    index: true
      t.string :name
      t.string :description
      t.boolean :wheelchair

      t.timestamps null: false
    end
  end
end
