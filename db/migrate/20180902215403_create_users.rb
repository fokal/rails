class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :avatar_uuid
      t.string :email
      t.string :name
      t.string :bio
      t.string :url
      t.string :twitter
      t.string :instagram
      t.string :location
      t.boolean :featured
      t.boolean :admin
      t.references :image, forgien_key: true
      t.references :stream, forgien_key: true

      t.timestamps
    end
  end
end
