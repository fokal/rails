class CreateStats < ActiveRecord::Migration[5.2]
  def change
    create_table :stats do |t|
      t.integer :views
      t.integer :downloads
      t.integer :favorites

      t.timestamps
    end
  end
end
