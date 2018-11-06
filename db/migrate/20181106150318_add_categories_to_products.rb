class AddCategoriesToProducts < ActiveRecord::Migration[5.1]
  def change
  	add_column :category, :category_id, :integer
  	add_index  :category, :category_id
  end
end
