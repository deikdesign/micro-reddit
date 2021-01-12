class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :author_id

      t.timestamps
    end
    add_column :user_id
  end
end
