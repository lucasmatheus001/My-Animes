class CreateAnimes < ActiveRecord::Migration[6.1]
  def change
    create_table :animes do |t|
      t.string "anime_id"
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
