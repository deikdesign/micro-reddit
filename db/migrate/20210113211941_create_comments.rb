class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :post_id

      t.timestamps

      
      add_reference :author, :post, :foreign_key: true
      add_foreign_key :author, :post
      add_column comments.author_id
    end
  end
end
