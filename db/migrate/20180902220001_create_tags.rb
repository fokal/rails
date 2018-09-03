class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :description
      t.references :users
      t.references :image
      t.references :stream

      t.timestamps
    end
  end
end
