class CreateStopTimes < ActiveRecord::Migration
  def change
    create_table :stop_times do |t|
      t.references :trip,         index: true
      t.string :stop_id,          index: true
      t.datetime :arrival_time
      t.datetime :departure_time
      t.integer :stop_sequence

      t.timestamps null: false
    end
  end
end
