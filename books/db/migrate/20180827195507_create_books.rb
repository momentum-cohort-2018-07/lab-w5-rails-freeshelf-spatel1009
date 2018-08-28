class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :description
      t.string :url
      t.integer :user_id
      t.timestamps
    end
    add_index :books, :user_id
  end
end
