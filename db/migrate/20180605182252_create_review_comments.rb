class CreateReviewComments < ActiveRecord::Migration[5.1]
  def change
    create_table :review_comments do |t|
      t.integer :review_id
      t.integer :user_id
      t.text :content

      t.timestamps
    end
  end
end