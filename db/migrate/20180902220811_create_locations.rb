class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.st_point :point
      t.string :description

      t.timestamps
    end
  end
end