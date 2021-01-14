class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :author_id

      t.timestamps
      add_reference :author, :foreign_key: true
      add_foreign_key :author
      add_column :author_id
    end
  end
end
