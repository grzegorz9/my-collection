class AddSubcategoriesToItems < ActiveRecord::Migration
  def change
    add_column :items, :subcategory, :string
  end
end
