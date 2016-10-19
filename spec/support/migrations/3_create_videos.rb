class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title
      t.string :url
      t.integer :post_id
    end

    add_index :videos, :post_id
  end
end
