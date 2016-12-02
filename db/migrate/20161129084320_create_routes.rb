class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :short_name
      t.string :long_name
      t.string :description
      t.string :color, limit: 6
      t.string :text_color, limit: 6
      t.integer :route_type

      t.timestamps null: false
    end
  end
end
