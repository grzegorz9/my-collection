class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :content
      t.references :item

      t.timestamps
    end
    add_index :comments, :item_id
  end
end
