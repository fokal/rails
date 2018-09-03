class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :shortcode
      t.boolean :featured
      t.string :title
      t.string :description
      t.references :user
      t.references :stat
      t.references :metadata
      t.references :color
      t.references :label
      t.references :location

      t.timestamps
    end
  end
end
