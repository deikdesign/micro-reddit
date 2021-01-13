class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :author_id
      t.integer :post_id

      t.timestamps
      add_foreign_key :author
    end
  end
end
