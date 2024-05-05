class CreateCommentResponses < ActiveRecord::Migration[7.1]
  def change
    create_table :comment_responses do |t|
      t.string :content, null: true, default: ""
      t.references :user, null: false, foreign_key: true
      t.references :comment, null: false, foreign_key: true
      t.timestamps
    end
  end
end
