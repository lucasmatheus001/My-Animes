class CreateAnimes < ActiveRecord::Migration[6.1]
  def change
    create_table :animes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      t.string :description, null: false
      t.string :image_url, null: false
      t.string :genres, null: false
      t.integer :episodes, null: false
      t.integer :status, default: 0
      t.string :studios, null: false
      t.integer :duration, null: false
      t.string :situation, null: false
      t.timestamps
    end
  end
end
