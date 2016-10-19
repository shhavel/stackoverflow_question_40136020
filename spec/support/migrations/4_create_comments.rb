class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :video_id
    end

    add_index :comments, :video_id
  end
end
