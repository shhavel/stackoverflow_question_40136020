class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.date :date
      t.text :body
      t.text :tags
      t.integer :user_id
    end

    add_index :posts, :user_id
  end
end
