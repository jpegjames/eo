class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.references :route, index: true, foreign_key: true
      t.string :block_id
      t.boolean :bikes_allowed
      t.boolean :wheelchair
      t.integer :direction_id
      t.text :headsign

      t.timestamps null: false
    end
  end
end
