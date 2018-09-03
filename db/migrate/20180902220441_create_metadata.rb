class CreateMetadata < ActiveRecord::Migration[5.2]
  def change
    create_table :metadata do |t|
      t.float :aperture
      t.float :exposure_time
      t.float :focal_length
      t.integer :iso
      t.string :make
      t.string :model
      t.string :lens_make
      t.string :lens_model
      t.integer :pixel_yd
      t.integer :pixel_xd
      t.timestamp :capture_time

      t.timestamps
    end
  end
end
